// https://typst.app/universe/package/bulb
#import "@preview/bulb:0.1.0": dither

#set page(paper: "a4", flipped: true, margin: 1%)
#set text(font: "Sarasa Mono SC", size: 8pt)
#set figure(numbering: none, gap: 6pt)

#let modes = (
  (mode: "rgb", method: "bayer2x2"),
  (mode: "rgb", method: "bayer4x4"),
  (mode: "rgb", method: "bayer8x8"),
  (mode: "rgb", method: "cluster4"),
  (mode: "rgb", method: "cluster6"),
  (mode: "rgb", method: "cluster8"),
)
#let img-data = read("assets/20231103_21_00_00.jpg", encoding: none)

#block(height: 100%, align(center + horizon,
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4pt,
    row-gutter: 20pt,
    grid.cell(colspan: 3,
      grid(
        columns: (1fr, 1fr, 1fr),
        align: center,
        column-gutter: 4pt,
        row-gutter: 8pt,
        ..modes.map(((mode, method)) => {
          figure(
            pad(top: 5pt, bottom: 5pt, image(dither(img-data, mode: mode, method: method))),
            caption: [
              mode: #raw(mode),  method: #raw(method)
            ]
          )
        })
      )
    ),
    pad(top: 20pt, align(center, text(size: 10pt)[
    Typst Package: bulb \
    Version: 0.1.0 \
    Author: Miet Peeters \
    Sample Image: ゲン助, _有限_ (2020)
    ])),
    grid.cell(colspan: 2)[],
  )
))

#for (mode, method) in modes [
  #pagebreak()
  #block(height: 100%, align(center + horizon,
    text(size: 16pt,
      figure(
        image(dither(img-data, mode: mode, method: method), width: 100%),
        caption: [mode: #raw(mode),  method: #raw(method)],
        gap: 20pt,
      )
    )
  ))
]