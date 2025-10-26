#import "../templates/m-voss.typ": bestellung


#let table-data = (
  (20, "Stück", "Schwarz-Orange-Schwarz", 0.000),
  (10, "Stück", "Grau-Grün-Grau", 0.000),
  (20, "Stück", "Blau-Schwarz-Blau", 0.000),
  (20, "Stück", "Grün-Blau-Grün", 0.000),
  (10, "Stück", "Blau-Gelb-Blau", 0.000),
  (10, "Stück", "Grau-Weiß-Grau", 0.000),
  (5, "x", "Farbwechsel", 0.000),
)

#bestellung(
  reference: [4116],
  date: [14.09.2025],
  table-data: table-data,
)[
  Sehr geehrte Frau Hümmer,

  Hiermit bestelle ich wie folgt: Kennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 50m, 30mm breit.
  Leider haben wir diesen Auftrag übersehen, so dass die Lieferung per Express und schnellstmöglich und zu unsern Lasten erfolgen muss.
  Bitte bestätigen Sie uns kurz den Liefertermin sowie den Preis, den ich aufgrund der Dringlichkeit des Auftrags nicht angegeben habe.

  #underline()[Lieferadresse]\
  Lürssen-Kröger Werft GmbH & Co. KG\
  Hüttenstrasse 25\
  24790 Schacht-Audorf
]
