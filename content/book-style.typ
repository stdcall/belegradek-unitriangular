#import "numbering.typ": statement-selector
#import "main-defs.typ": bibliography-context
#import "statements.typ": statement-block
#let article-style(body) = {
  set page(
    width: 176mm,
    height: 250mm,
    margin: (x: 20mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    footer: context align(center, counter(page).display()),
  )
  set text(font: "Libertinus Serif", size: 11pt, lang: "en")
  set par(
    justify: true,
    leading: 0.56em,
    spacing: 0.85em,
    first-line-indent: 1.2em,
  )
  show selector(list).or(enum): block.with(above: 1.2em, below: 1.2em)
  show list.where(tight: true): set list(spacing: 0.8em)
  show enum.where(tight: true): set enum(spacing: 0.8em)
  set heading(numbering: "1.1.")
  set math.equation(numbering: none)
  show math.equation: set text(font: "STIX Two Math")
  show statement-selector: it => statement-block(it.body)
  show figure
    .where(kind: "sublemma")
    .or(figure.where(kind: "auxiliary-lemma"))
    .or(figure.where(kind: "auxiliary-fact")): it => statement-block(
    it.body,
    compact: true,
  )
  show figure: set align(left)
  show heading: it => {
    if it.numbering != none {
      counter(statement-selector).update(0)
      counter(math.equation).update(0)
      counter(figure.where(kind: "auxiliary-lemma")).update(0)
      counter(figure.where(kind: "auxiliary-fact")).update(0)
      counter(figure.where(kind: "sublemma")).update(0)
    }
    let (above, below) = if it.level == 1 {
      (2.25em, 1.15em)
    } else { (1.8em, 1.05em) }
    block(above: above, below: below, sticky: true)[
      #strong[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          [ ]
        }
        #it.body
      ]
    ]
  }
  show ref: it => {
    if it.element != none {
      let element = it.element
      if (
        element.func() == figure
          and element.kind in ("bibliography", "editorial-bibliography")
      ) {
        if not bibliography-context.get() {
          metadata((kind: "citation", target: str(it.target)))
        }
      }
      if it.supplement not in (auto, none, []) {
        return link(element.location(), it.supplement)
      }
      let shown = if element.func() == heading {
        numbering("1.1", ..counter(heading).at(element.location()))
      } else if element.func() == figure and element.kind == "statement" {
        let part = counter(heading).at(element.location()).slice(0, 2)
        let num = counter(figure.where(kind: "statement"))
          .at(element.location())
          .first()
        numbering("1.1.1", ..part, num)
      } else if (
        element.func() == figure
          and element.kind in ("bibliography", "editorial-bibliography")
      ) {
        numbering(
          element.numbering,
          ..counter(figure.where(kind: element.kind)).at(element.location()),
        )
      } else if (
        element.func() == figure
          and element.kind
            in (
              "auxiliary-lemma",
              "auxiliary-fact",
              "sublemma",
            )
      ) {
        numbering(
          element.numbering,
          ..counter(figure.where(kind: element.kind)).at(element.location()),
        )
      } else if element.func() == math.equation {
        numbering(
          element.numbering,
          ..counter(math.equation).at(element.location()),
        )
      } else { return it }
      link(element.location(), text(weight: "semibold", str(shown)))
    } else if sys.inputs.at("stage", default: "final") == "draft" {
      [?]
    } else { it }
  }
  body
}
