#import "numbering.typ": statement-counter, statement-number, statement-selector
#import "main-defs.typ": bibliography-context
#let statement(kind, body, italic: true, title: none, numbered: true) = {
  if not numbered {
    return block(breakable: true, above: 0.8em, below: 0.6em)[
      #emph[#kind.] #if italic { emph(body) } else { body }
    ]
  }
  figure(
    kind: "statement",
    supplement: kind,
    numbering: statement-number,
    caption: none,
    outlined: false,
    block(breakable: true, above: 0.8em, below: 0.6em)[
      #context {
        metadata((
          kind: "statement-number",
          number: statement-number(statement-counter.get().first()),
        ))
        strong[#kind #statement-counter.display(statement-number)#if (
            title != none
          ) [ (#title)].]
      }
      #if italic { emph(body) } else { body }
    ],
  )
}
#let theorem(body, title: none, numbered: true) = statement(
  "Theorem",
  body,
  title: title,
  numbered: numbered,
)
#let proposition(body, title: none, numbered: true) = statement(
  "Proposition",
  body,
  title: title,
  numbered: numbered,
)
#let lemma(body, title: none, numbered: true) = statement(
  "Lemma",
  body,
  title: title,
  numbered: numbered,
)
#let corollary(body, title: none, numbered: true) = statement(
  "Corollary",
  body,
  title: title,
  numbered: numbered,
)
#let definition(body, numbered: true) = statement(
  "Definition",
  body,
  italic: false,
  numbered: numbered,
)
#let remark(body, numbered: true) = statement(
  "Remark",
  body,
  italic: false,
  numbered: numbered,
)
#let example(body, numbered: true) = statement(
  "Example",
  body,
  italic: false,
  numbered: numbered,
)
#let question(body, numbered: true) = statement(
  "Question",
  body,
  italic: false,
  numbered: numbered,
)
#let construction(body, numbered: true) = statement(
  "Construction",
  body,
  italic: false,
  numbered: numbered,
)
#let fact(body, numbered: true) = statement("Fact", body, numbered: numbered)
#let conjecture(body, numbered: true) = statement(
  "Conjecture",
  body,
  italic: false,
  numbered: numbered,
)
#let auxiliary-fact(body) = figure(
  kind: "auxiliary-fact",
  supplement: "Fact",
  numbering: "1",
  caption: none,
  outlined: false,
  block(breakable: true, above: 0.6em, below: 0.5em)[
    #context strong[Fact #counter(figure.where(kind: "auxiliary-fact")).display(
        "1",
      ).]
    #emph(body)
  ],
)
#let auxiliary-lemma(body) = figure(
  kind: "auxiliary-lemma",
  supplement: "Lemma",
  numbering: "1",
  caption: none,
  outlined: false,
  block(breakable: true, above: 0.6em, below: 0.5em)[
    #context strong[Lemma #counter(
        figure.where(kind: "auxiliary-lemma"),
      ).display("1").]
    #emph(body)
  ],
)
#let sublemma(body) = figure(
  kind: "sublemma",
  supplement: "Sublemma",
  numbering: "I",
  caption: none,
  outlined: false,
  block(breakable: true, above: 0.6em, below: 0.5em)[
    #context strong[Sublemma #counter(figure.where(kind: "sublemma")).display(
        "I",
      ).]
    #emph(body)
  ],
)
#let proof(body, head: [Proof.]) = block(
  breakable: true,
  above: 0.5em,
  below: 0.6em,
)[#emph(head) #body]
#let bib-entry(body, editorial: false) = {
  let kind = if editorial { "editorial-bibliography" } else { "bibliography" }
  let scheme = if editorial { "E1" } else { "1" }
  figure(
    kind: kind,
    supplement: none,
    numbering: scheme,
    caption: none,
    outlined: false,
    block(breakable: false, above: 0.35em)[
      #bibliography-context.update(true)
      #context counter(figure.where(kind: kind)).display(scheme). #body
      #bibliography-context.update(false)
    ],
  )
}
