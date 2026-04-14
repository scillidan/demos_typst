// https://typst.app/universe/package/tblr
#import "@preview/tblr:0.5.0": *

#let tooltip-layout(doc) = {
  set page(paper: "a6", margin: 1%)
  set text(font: "Sarasa Mono SC", size: 8pt, stretch: 80%)
  set par(spacing: .6em, justify: true)
  show parbreak: _ => {
    v(.1em)
    line(stroke: 1pt, length: 100%)
    v(.1em)
  }
  doc
}

#let indent(content) = {
  h(2em)
  content
}