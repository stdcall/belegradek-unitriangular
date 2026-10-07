#let statement-selector = figure.where(kind: "statement")
#let statement-counter = counter(statement-selector)
#let statement-number(n) = {
  let place = counter(heading).get()
  numbering("1.1.1", ..place.slice(0, 2), n)
}
