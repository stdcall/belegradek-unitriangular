#import "bibliography-data.typ": bibliography-data
#let rich(value) = eval(value.replace("'", "’"), mode: "markup")
#let bib-backlinks(key) = context {
  let target = "bib:" + key
  let mentions = query(metadata).filter(it => (
    type(it.value) == dictionary
      and it.value.at("kind", default: none) == "citation"
      and it.value.target == target
  ))
  let seen = ()
  let pages = ()
  for mention in mentions {
    let loc = mention.location()
    if loc.page() not in seen {
      seen.push(loc.page())
      let position = loc.position()
      let destination = (
        page: position.page,
        x: position.x,
        y: calc.max(0pt, position.y - 8pt),
      )
      pages.push(link(destination, str(counter(page).at(loc).first())))
    }
  }
  if pages.len() > 0 { [ \[#pages.join(", ")\]] }
}
#let bib-description(key) = {
  let entry = bibliography-data.at(key)
  rich(
    entry
      .at("author", default: entry.at("editor", default: ""))
      .replace(" and ", ", "),
  )
  if "author" not in entry { [ (eds.)] }
  [, ]
  let template = entry.annotation
  let position = 0
  for match in template.matches(regex("\\{([^{}]+)\\}")) {
    rich(template.slice(position, match.start))
    let token = match.captures.first().split(".")
    let data = if token.len() == 1 { entry } else {
      bibliography-data.at(token.first())
    }
    let field = token.last()
    if field == "journal" {
      emph(rich(data.at("shortjournal", default: data.at(
        "userb",
        default: data.at("journal", default: ""),
      ))))
    } else { rich(data.at(field)) }
    position = match.end
  }
  rich(template.slice(position))
  if (
    entry.at("language", default: none) == "russian"
      and entry.at("related", default: "") == ""
  ) { [ (Russian).] }
  for component in (
    (key,) + entry.at("related", default: "").split(",").filter(k => k != "")
  ) {
    let record = bibliography-data.at(component)
    if "doi" in record {
      [ #link("https://doi.org/" + record.doi, "DOI: " + record.doi)]
    }
  }
  text(size: 9pt, bib-backlinks(key))
}
