"""Build, format and verify the standalone article."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile

import pymupdf
from pypdf import PdfReader, PdfWriter
from pypdf.generic import (ArrayObject, DictionaryObject, FloatObject,
                           NameObject, NullObject, NumberObject, TextStringObject)

ROOT = Path(__file__).resolve().parents[1]


def config():
    return json.loads((ROOT / 'config/project.json').read_text())


def cache():
    default = Path(tempfile.gettempdir()) / (ROOT.name + '-build')
    path = Path(os.environ.get('BOOK_BUILD_CACHE', default))
    path.mkdir(parents=True, exist_ok=True)
    return path


def run(args, **kwargs):
    result = subprocess.run(args, cwd=ROOT, text=True, capture_output=True,
                            **kwargs)
    if result.returncode:
        raise RuntimeError(result.stdout + result.stderr)
    if re.search(r'^warning:', result.stderr, re.M):
        raise RuntimeError(result.stderr)
    return result.stdout


def compile_pdf(entry, target, *, notes=True):
    args = ['typst', 'compile', '--root', str(ROOT),
            '--ignore-system-fonts', '--font-path', str(ROOT / 'assets/fonts'),
            '--input', 'stage=' + config()['stage']]
    references = {}
    if entry == config()['corrections_entry']:
        references = article_references()
        args += ['--input', 'article-references=' + json.dumps(references)]
    if not notes:
        args += ['--input', 'editorial-notes=off']
    run(args + [entry, str(target)])
    return references


def article_references():
    expression = '''{
      let targets = query(heading) + query(figure) + query(math.equation) + query(metadata);
      targets.filter(it => it.has("label")).map(it => {
        let loc = it.location(); let p = loc.position();
        let num = if it.func() == heading {
          if it.numbering == none { "" } else {
            numbering("1.1", ..counter(heading).at(loc))
          }
        } else if it.func() == figure and it.kind == "statement" {
          numbering("1.1.1", ..counter(heading).at(loc).slice(0,2),
            counter(figure.where(kind: "statement")).at(loc).first())
        } else if it.func() == figure {
          numbering(it.numbering, ..counter(figure.where(kind: it.kind)).at(loc))
        } else if it.func() == math.equation {
          numbering(it.numbering, ..counter(math.equation).at(loc))
        } else { "" };
        (label: str(it.label), number: num, page: p.page,
          x: p.x / 1pt, top: 250mm / 1pt - p.y / 1pt + 8)
      })
    }'''
    records = json.loads(run(['typst','eval',expression,'--in',config()['entry'],
                            '--root','.', '--ignore-system-fonts',
                            '--font-path','assets/fonts','--input','stage=final']))
    return {r.pop('label'): r for r in records}


def font_names():
    names = set()
    for path in (ROOT / 'assets/fonts').rglob('*'):
        if path.suffix not in {'.otf', '.ttf'}:
            continue
        data = path.read_bytes()
        for i in range(struct.unpack_from('>H', data, 4)[0]):
            tag, _, table, _ = struct.unpack_from('>4sIII', data, 12 + 16*i)
            if tag != b'name':
                continue
            _, count, strings = struct.unpack_from('>3H', data, table)
            for j in range(count):
                platform, _, _, name_id, length, offset = struct.unpack_from(
                    '>6H', data, table + 6 + 12*j)
                if name_id == 6:
                    start = table + strings + offset
                    names.add(data[start:start+length].decode(
                        'utf-16-be' if platform in (0, 3) else 'latin-1'))
    assert names, 'No licensed fonts'
    return names


def outline_nodes(reader):
    catalog = reader.root_object if isinstance(reader, PdfWriter) else reader.trailer['/Root']
    root = catalog.get('/Outlines')
    if not root:
        return
    def walk(ref):
        while ref:
            node = ref.get_object()
            yield node
            if node.get('/First'):
                yield from walk(node['/First'])
            ref = node.get('/Next')
    yield from walk(root.get_object().get('/First'))


def finalise(raw, target, references=None):
    before = PdfReader(raw)
    writer = PdfWriter(raw, incremental=True)
    for page in writer.pages:
        for ref in page.get('/Annots', []):
            annotation = ref.get_object()
            action = annotation.get('/A')
            if not action:
                continue
            action = action.get_object()
            uri = str(action.get('/URI', ''))
            if not uri.startswith('book-ref:'):
                continue
            record = (references or {})[uri.removeprefix('book-ref:')]
            annotation[NameObject('/A')] = DictionaryObject({
                NameObject('/S'): NameObject('/GoToR'),
                NameObject('/F'): TextStringObject(Path(config()['output']).name),
                NameObject('/D'): ArrayObject([
                    NumberObject(record['page']-1), NameObject('/XYZ'),
                    FloatObject(record['x']), FloatObject(record['top']), NullObject()])})
    for node in outline_nodes(writer):
        holder, key = node, '/Dest'
        if '/A' in node:
            holder = node['/A'].get_object()
            assert holder.get('/S') == '/GoTo'
            key = '/D'
        dest = holder[key]
        if isinstance(dest, str):
            dest = before.named_destinations[dest].dest_array
        assert len(dest) == 5 and dest[1] == '/XYZ', dest
        page = next(p for p in writer.pages if p.indirect_reference == dest[0])
        top = min(float(page.mediabox.top), float(dest[3]) + 8)
        holder[NameObject(key)] = ArrayObject([
            dest[0], NameObject('/XYZ'), FloatObject(0), FloatObject(top), NullObject()])
    writer.write(target)
    after = PdfReader(target)
    assert len(after.pages) == len(before.pages)
    for a, b in zip(before.pages, after.pages):
        assert a.mediabox == b.mediabox and a.cropbox == b.cropbox
        assert a.rotation == b.rotation
        assert a.get_contents().get_data() == b.get_contents().get_data()
    assert '/OpenAction' not in after.trailer['/Root']


def check_pdf(path):
    reader = PdfReader(path)
    allowed = font_names()
    for node in outline_nodes(reader):
        dest = node['/A']['/D'] if '/A' in node else node['/Dest']
        assert len(dest) == 5 and str(dest[1]) == '/XYZ'
        assert isinstance(dest[4], NullObject), node['/Title']
        assert isinstance(dest[2], (int, float))
        page = next((i for i, p in enumerate(reader.pages)
                     if p.indirect_reference == dest[0]), None)
        assert page is not None, node['/Title']
        assert 0 <= float(dest[3]) <= float(reader.pages[page].mediabox.top)
    assert reader.page_labels == [str(i+1) for i in range(len(reader.pages))]
    doc = pymupdf.open(path)
    foreign = set()
    for page in doc:
        for _, _, kind, name, _, encoding, *_ in page.get_fonts(full=True):
            name = re.sub(r'^[A-Z]{6}\+', '', name)
            if kind == 'Type0':
                name = name.removesuffix('-' + encoding)
            if name not in allowed:
                foreign.add(name)
        for span in page.get_texttrace():
            assert all(glyph != 0 for _, glyph, *_ in span['chars']), \
                f'Missing glyph on page {page.number+1}'
        for link in page.get_links():
            if link['kind'] == pymupdf.LINK_GOTO:
                assert 0 <= link['page'] < len(doc), link
            if link['kind'] == pymupdf.LINK_GOTOR:
                assert link['file'] == Path(config()['output']).name, link
                assert link['page'] >= 0, link
        for word in page.get_text('words'):
            x0, y0, x1, y1, text, *_ = word
            assert -1 <= x0 <= x1 <= page.rect.width+1, (page.number+1,text)
            assert -1 <= y0 <= y1 <= page.rect.height+1, (page.number+1,text)
    assert not foreign, f'Unlicensed font fallback: {foreign}'
    return {'pages': len(doc), 'bookmarks': len(list(outline_nodes(reader))),
            'links': sum(len(p.get_links()) for p in doc)}


def build(entry=None, suffix='', *, notes=True):
    c = config()
    name = Path(c['output']).stem + suffix + '.pdf'
    raw, candidate = cache() / ('raw-' + name), cache() / name
    references = compile_pdf(entry or c['entry'], raw, notes=notes)
    finalise(raw, candidate, references)
    result = check_pdf(candidate)
    (ROOT / 'build').mkdir(exist_ok=True)
    shutil.copy2(candidate, ROOT / 'build' / name)
    print(f'{name}: {result}')
    return result


def format_sources(*, check=False):
    args = ['typstyle', '--line-width', '80', '--indent-width', '2',
            '--wrap-text=fill', '--check' if check else '--inplace', 'content']
    run(args)


def source_checks():
    labels, cited = {}, []
    for path in sorted((ROOT / 'content').glob('*.typ')):
        text = path.read_text()
        for m in re.finditer(r'<([a-z][\w-]*:[\w:.-]+)>', text):
            assert m[1] not in labels, f'Duplicate label {m[1]}'
            labels[m[1]] = path.name
        cited += [(m[1].rstrip('.:'), path.name) for m in
                  re.finditer(r'@([a-z][\w-]*:[\w:.-]+)', text)]
        if re.match(r'\d\d-', path.name):
            assert not re.search(r'#(?:h|v|set|pagebreak)\b', text), path.name
            assert not re.search(r'(?:Theorem|Lemma|Proposition|Corollary) '
                                 r'[1-4]\.\d+\.\d+', text), path.name
    missing = [(label, file) for label, file in cited if label not in labels]
    assert not missing, f'Unresolved references: {missing[:20]}'
    assert not any('original-' in label for label in labels), 'Provisional labels'
    expected = json.loads((ROOT / 'checks/numbering.json').read_text())
    records = json.loads(run(['typst', 'eval', 'query(metadata).map(it => it.value)',
                             '--in', 'content/main.typ', '--root', '.', '--input',
                             'stage=final', '--ignore-system-fonts',
                             '--font-path', 'assets/fonts']))
    numbers = [r['number'] for r in records
               if isinstance(r, dict) and r.get('kind') == 'statement-number']
    assert numbers == expected['statements'], 'Statement numbering mismatch'


def checksums():
    lines = [hashlib.sha256(p.read_bytes()).hexdigest() + '  ' + p.name
             for p in sorted((ROOT / 'build').glob('*.pdf'))]
    (ROOT / 'build/SHA256SUMS').write_text('\n'.join(lines) + '\n')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=['build','check','fmt','lint','test',
                                         'corrections','build-no-notes'])
    command = parser.parse_args().command
    if command == 'fmt':
        format_sources()
        return
    if command in {'lint','check'}:
        format_sources(check=True)
        source_checks()
    if command == 'lint':
        return
    if command in {'test','check'}:
        run([sys.executable,'-m','unittest','discover','-s','checks/tests','-v'])
    if command == 'test':
        return
    if command in {'build','check'}:
        build()
    if command in {'corrections','check'}:
        build(config()['corrections_entry'], '.corrections')
    if command in {'build-no-notes','check'}:
        build(suffix='.no-notes', notes=False)
    if command == 'check':
        run([sys.executable,'scripts/check_lsp.py'])
    checksums()


if __name__ == '__main__':
    main()
