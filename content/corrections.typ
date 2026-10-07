#import "book-style.typ": article-style
#import "main-defs.typ" as defs
#show: article-style
#let article-references = json(bytes(sys.inputs.at(
  "article-references",
  default: "{}",
)))
#show ref: it => {
  let target = str(it.target)
  if target in article-references {
    let shown = if it.supplement not in (auto, none, []) {
      it.supplement
    } else {
      text(weight: "semibold", article-references.at(target).number)
    }
    link("book-ref:" + target, shown)
  } else { it }
}
#set document(
  title: "Model Theory of Unitriangular Groups: Corrections",
  author: "O. V. Belegradek",
  date: none,
)
#heading(numbering: none)[Corrections]
O. V.~Belegradek, _Model Theory of Unitriangular Groups_, American Mathematical
Society Translations, Series 2, vol. 195 (1999), pp. 1–116. The following list
records the changes made in this edition. Page numbers and numbered passages
identify the printed edition.
#let entries = json("../corrections.json").entries
#if entries.len() == 0 [No corrections are recorded.] else {
  for entry in entries {
    block(breakable: false, above: 1em)[
      *#entry.id* · p. #entry.printed_page,
      #eval(entry.place, mode: "markup", scope: dictionary(defs))

      Printed: #eval(entry.original, mode: "markup", scope: dictionary(defs))

      Corrected: #eval(entry.corrected, mode: "markup", scope: dictionary(defs))

      #eval(entry.reason, mode: "markup", scope: dictionary(defs))
    ]
  }
}
