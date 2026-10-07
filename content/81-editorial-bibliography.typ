#import "statements.typ": bib-entry
#import "bibliography-style.typ": bib-description
#if sys.inputs.at("editorial-notes", default: "on") != "off" [
  #heading(numbering: none)[Editorial references] <sec:editorial-references>
  #bib-entry(editorial: true)[#bib-description("Weibel1994")] <bib:Weibel1994>
]
