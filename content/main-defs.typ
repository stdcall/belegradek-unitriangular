#let UT = math.upright("UT")
#let Ring = math.op("Ring")
#let Th = math.op("Th")
#let Ext = math.op("Ext")
#let Hom = math.op("Hom")
#let Aut = math.op("Aut")
#let Inn = math.op("Inn")
#let Ker = math.op("Ker")
#let Im = math.op("Im")
#let char = math.op("char")
#let diag = math.op("diag")
#let Ann = math.op("Ann")
#let acl = math.op("acl")
#let rnk = math.op("rnk")
#let tp = math.op("tp")
#let Z = math.op("Z")
#let C = math.op("C")
#let source(n) = metadata((kind: "source-page", page: n))
#let bibliography-context = state("bibliography-context", false)
#let editorial-note-counter = counter("editorial-note")
#let ed-note(body) = if (
  sys.inputs.at("editorial-notes", default: "on") != "off"
) {
  editorial-note-counter.step()
  context {
    let mark = "*" + str(editorial-note-counter.get().first())
    footnote(numbering: _ => mark)[#body~— _Ed._]
    counter(footnote).update(n => n - 1)
  }
}
