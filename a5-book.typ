#text(include("book.txt"))
// #import "book.md.typ": *

#set page(
  paper: "iso-a6",
  margin: (
    top: 0.5cm,
    bottom: 0.5cm,
    left: 0.5cm,
    right: 0.5cm,
    inside: 1cm,
    outside: 0.5cm
  ),
  footer: [
    #align(center)[
      #counter(page).display("1")
    ]
  ]
)
