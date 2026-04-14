#import "polario-frame-template.typ": render-polario

#let ext-info = (
    "background": rgb("#00000000"),
    "extend-middle-ratio": 80%,
    "first": text(size: 8pt, fill: white)[This is],
    "third": text(size: 12pt, fill: white)[This is],
)

#let params = (
    "theme": "classic-bottom-three",
    "img-path": "Eclogues.jpg",
    "ext-info": ext-info,
)

#render-polario(params)