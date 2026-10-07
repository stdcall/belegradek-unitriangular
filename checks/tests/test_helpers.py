"""Check numbering, bibliography data propagation and PDF navigation."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

import pymupdf
from pypdf import PdfReader
from pypdf.generic import NullObject

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from project import finalise, outline_nodes

FIXTURE = '''@article{Alpha2000,
  author = {Alpha, A.},
  title = {Original title},
  journal = {Original journal},
  year = {2000},
  volume = {5},
  pages = {10–20},
  doi = {10.1234/alpha},
  annotation = {{title}, {journal} {volume} ({year}), {pages}.},
}
@article{Beta2001,
  author = {Beta, B.},
  title = {Related title},
  year = {2001},
  annotation = {{title}. See @bib:Alpha2000.},
}
'''


class Helpers(unittest.TestCase):
    def prepare(self, folder):
        root = Path(folder)
        (root / 'content').mkdir()
        for name in ('main-defs', 'numbering', 'statements', 'book-style',
                     'bibliography-data', 'bibliography-style'):
            shutil.copy2(ROOT / 'content' / (name + '.typ'), root / 'content')
        shutil.copytree(ROOT / 'assets/fonts', root / 'assets/fonts')
        (root / 'references.bib').write_text(FIXTURE)
        (root / 'editorial.bib').write_text('')
        return root

    def compile(self, root, text, name):
        (root / 'sample.typ').write_text(text)
        target = root / (name + '.pdf')
        result = subprocess.run([
            'typst', 'compile', '--root', str(root), '--ignore-system-fonts',
            '--font-path', str(root / 'assets/fonts'), str(root / 'sample.typ'),
            str(target)], text=True, capture_output=True)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(result.stderr, '')
        return target

    def test_inserted_statement_changes_numbers_and_references(self):
        with tempfile.TemporaryDirectory() as folder:
            root = self.prepare(folder)
            text = r'''#import "content/book-style.typ": article-style
#import "content/statements.typ": *
#show: article-style
= Section
== Subsection
#lemma[One.] <lem:one>
INSERT
#theorem[Two.] <th:two>
The reference is Theorem~@th:two.
'''
            before = self.compile(root, text.replace('INSERT', ''), 'before')
            after = self.compile(root, text.replace('INSERT',
                '#proposition[Inserted.] <prop:inserted>'), 'after')
            a = ''.join(p.get_text() for p in pymupdf.open(before))
            b = ''.join(p.get_text() for p in pymupdf.open(after))
            self.assertEqual(a.count('1.1.2'), 2)
            self.assertEqual(b.count('1.1.3'), 2)
            final = root / 'final.pdf'
            finalise(after, final)
            self.assertEqual(len(PdfReader(after).pages),
                             len(PdfReader(final).pages))
            for node in outline_nodes(PdfReader(final)):
                dest = node['/A']['/D'] if '/A' in node else node['/Dest']
                self.assertEqual(str(dest[1]), '/XYZ')
                self.assertEqual(float(dest[2]), 0)
                self.assertIsInstance(dest[4], NullObject)

    def test_bibliography_mutation_and_backlinks(self):
        with tempfile.TemporaryDirectory() as folder:
            root = self.prepare(folder)
            text = r'''#import "content/book-style.typ": article-style
#import "content/statements.typ": bib-entry
#import "content/bibliography-style.typ": bib-description
#show: article-style
First citation \[@bib:Alpha2000\].
#pagebreak()
Second citation \[@bib:Alpha2000\].
#pagebreak()
#heading(numbering: none)[References]
#bib-entry[#bib-description("Alpha2000")] <bib:Alpha2000>
#bib-entry[#bib-description("Beta2001")] <bib:Beta2001>
'''
            before = self.compile(root, text, 'before')
            doc = pymupdf.open(before)
            printed = doc[2].get_text()
            self.assertIn('[1, 2]', printed)
            self.assertNotIn('[1, 2, 3]', printed)
            self.assertIn('Original title', printed)
            links = [link for link in doc[2].get_links()
                     if link['kind'] == pymupdf.LINK_GOTO]
            self.assertEqual(sorted(link['page'] for link in links), [0,1,2])
            changed = FIXTURE.replace('Original title','Mutation title')
            changed = changed.replace('Original journal','Mutation journal')
            changed = changed.replace('Alpha, A.','Changedauthor, A.')
            changed = changed.replace('10–20','9001–9002')
            changed = changed.replace('10.1234/alpha','10.1234/mutation')
            (root / 'references.bib').write_text(changed)
            after = self.compile(root, text, 'after')
            doc = pymupdf.open(after)
            printed = doc[2].get_text()
            for value in ('Mutation title','Mutation journal','Changedauthor',
                          '9001–9002'):
                self.assertIn(value, printed)
            self.assertIn('https://doi.org/10.1234/mutation',
                {link.get('uri') for link in doc[2].get_links()})

    def test_correction_link_targets_article_passage(self):
        with tempfile.TemporaryDirectory() as folder:
            root = self.prepare(folder)
            raw = self.compile(root, r'''#import "content/book-style.typ": article-style
#show: article-style
#link("book-ref:lem:target")[Corrected lemma]
''', 'raw')
            target = root / 'corrections.pdf'
            finalise(raw, target, {'lem:target': {
                'page': 12, 'x': 57, 'top': 615, 'number': '1.4.2'}})
            action = PdfReader(target).pages[0]['/Annots'][0].get_object()['/A']
            self.assertEqual(str(action['/S']), '/GoToR')
            self.assertEqual(str(action['/F']), 'belegradek-unitriangular.pdf')
            self.assertEqual(list(action['/D'][:4]), [11, '/XYZ', 57, 615])
            self.assertIsInstance(action['/D'][4], NullObject)


if __name__ == '__main__':
    unittest.main()
