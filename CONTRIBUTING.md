# Building the article

The entry point is `content/main.typ`; run `just build` or `just check`.
Typst 0.15.1 uses only the licensed fonts in `assets/fonts`.
The article uses continuous Arabic pagination starting at 1. No added
cover participates in the page count. The layout is reset for this
standalone edition; page numbers within the text are references to the
printed edition when explicitly described as such.

## Text conventions

Part files are ordinary markup, included in reading order. Level-1
headings are the article's four main sections; level-2 headings are its
numbered subsections. Use unnumbered `heading(numbering: none)` for the
Introduction and References. Heading numbers use native counters.

All numbered statements share a counter within each subsection. Import
`theorem`, `proposition`, `lemma`, `corollary`, `definition`, `remark`,
`example`, `question`, `proof` from `statements.typ`. Each takes a content
body. Literal semantic labels follow the full environment; links use
native `@label`, with only the number in semibold. Use semantic labels
such as `prop:basis-coordinates` and `sec:extensions-cocycles`.


Only displayed formulas carrying an actual printed number have native
equation numbering. Use `#math.equation(block: true, numbering: "(1)")`
with a math body and a literal semantic label. Counters restart within
each subsection. Ordinary unnumbered display formulas use `$ ... $`.
Do not type printed statement or formula numbers in the text.

`main-defs.typ` supplies upright UT and ring/group operators. Function
arguments after subscripts use `lr((x))` to avoid attaching the argument
to the index. Mathematical distinctions (fraktur, script, bold, hats,
primes, opposite rings, ordered commutators) are preserved.

No local layout patches, forced breaks, manual spaces, or preview code
belong in part files. Layout belongs in `book-style.typ`. Lines are at
most 80 characters and are formatted with Typstyle. A proof's heading
may be replaced with the original wording via the `head` argument.

Bibliographic descriptions live only in `references.bib`, using braced
BibLaTeX fields. The bibliography is generated from those records.
Keys use first author and year, with suffixes for collisions. Language
and DOI are included when confirmed. Original references use the same
native semantic labels as other references.

Confirmed changes from the printed wording go into `corrections.json`:
printed page, place, original reading, corrected reading, reason, and
specific mathematical or bibliographic verification. Typesetting
repairs are excluded. Doubtful mathematics remains unchanged until
resolved. Editorial footnotes use `ed-note` and can be disabled by the
`editorial-notes=off` input.

Editorial bibliographic records live in `editorial.bib` and use the E1
numbering sequence. The corrections PDF links its numbered passages to
the corresponding location in the article PDF in the same directory.
