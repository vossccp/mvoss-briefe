#import "../templates/m-voss.typ": ab

#let table-data = (
  (20, "Stück", "Schwarz-Orange-Schwarz", 38.50),
  (10, "Stück", "Grau-Grün-Grau", 38.50),
  (20, "Stück", "Blau-Schwarz-Blau", 38.50),
  (20, "Stück", "Grün-Blau-Grün", 38.50),
  (10, "Stück", "Blau-Gelb-Blau", 38.50),
  (10, "Stück", "Grau-Weiß-Grau", 38.50),
  (5, "x", "Farbwechsel", 25.00),
)

#ab(
  recipient: [
    Lürssen-Kröger Werft GmbH & Co. KG\
    Hüttenstrasse 25\
    24790 Schacht-Audorf
  ],
  your-reference: [BE458372, Frau Selk],
  your-message-date: [28.07.2025],
  reference: [4116],
  date: [21.09.2025],
  table-data: table-data,
)[
  Sehr geehrte Frau Selk,

  hiermit bestätigen wir den Eingang Ihrer Bestellung.

  Der voraussichtliche Liefertermin ist spätestens in Kalenderwoche 42.\
  Leider können wir Ihnen derzeit keinen früheren Termin verbindlich zusagen, da einige der
  von Ihnen bestellten Medien neu aufgenommen werden müssen. Ihren Auftrag haben wir jedoch mit hoher Priorität eingeplant und sind zuversichtlich, die Lieferung nach Möglichkeit auch früher realisieren zu können.
]
