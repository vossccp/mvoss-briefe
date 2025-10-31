#import "../templates/m-voss.typ": bestellung


#let table-data = (
  (1000, "Stück", "Grund blau (RAL 5025), Druck weiss 32mm, Jahreszahl 27, Monatszahlen von 1-12", 0.1280),
)

#bestellung(
  reference: [4118],
  date: [26.10.2025],
  table-data: table-data,
)[
  Sehr geehrte Frau Hümmer,

  Prüfplaketten aus SC3650 auf Rolle a 500 Stück ohne Kern

  #underline()[Lieferadresse]\
  Greggersen Gasetechnik GmbH\
  Bodestrasse 27-29\
  21031 Hamburg
]
