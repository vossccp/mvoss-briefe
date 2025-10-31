#import "../templates/m-voss.typ": ab

#let table-data = (
  (1000, "Stück", "Grund blau (RAL 5025), Druck weiss 32mm, Jahreszahl 27, Monatszahlen von 1-12", 0.39),
)

#ab(
  recipient: [
    Greggersen Gasetechnik GmbH\
    Bodestrasse 27-29\
    21031 Hamburg
  ],
  your-reference: [Z10/28443],
  your-message-date: [01.10.2025],
  reference: [4118],
  date: [27.10.2025],
  table-data: table-data,
)[
  Sehr geehrte Damen und Herren,

  hiermit bestätigen wir Ihre Bestellung vom 01.10.2025 über Prüfplaketten aus SC3650 auf Rolle a 500 Stück ohne Kern.

  #underline()[Liefertermin]\
  schnellstmöglich
]
