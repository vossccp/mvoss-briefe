#import "../templates/m-voss.typ": bestellung

#let table-data = (
  (1, "Rollen", "Speisewasser, gelb-rot-gelb", 28.495),
  (5, "Rollen", "Frischwasser, gelb", 28.495),
  (5, "Rollen", "Frischkühlwasser, gelb-grün-gelb", 28.495),
  (1, "Rollen", "Kaltwasser, gelb-weiß-gelb", 28.495),
  (5, "Rollen", "Feuerlöschwasser, grün-rot-grün", 28.495),
  (5, "Rollen", "Seekühlwasser, grün-gelb-grün", 28.495),
  (5, "Rollen", "Schmutzwasser, grün-braun-grün", 28.495),
  (3, "Rollen", "Abortwasser, grün-violett-grün", 28.495),
  (5, "Rollen", "Lenzwasser, grün-schwarz-grün", 28.495),
  (1, "Rollen", "Sprühwasser, grün-blau-grün", 28.495),
  (5, "Rollen", "Dieselkraftstoff, braun-gelb-braun", 28.495),
  (2, "Rollen", "Getriebeschmieröl, violett-rot-violett", 28.495),
  (2, "Rollen", "Motorenschmieröl, violett-gelb-violett", 28.495),
  (3, "Rollen", "Schmutzöl, violett-braun-violett", 28.495),
  (3, "Rollen", "Altöl, violett-schwarz-violett", 28.495),
  (1, "Rollen", "Acethylen, grau-gelb-grau", 28.495),
  (3, "Rollen", "Steuer-/Regelluft, grau-violett-grau", 28.495),
  (1, "Rollen", "Atemluft, grau-weiß-grau", 28.495),
  (1, "Rollen", "Sauerstoff, grau-blau-grau", 28.495),
  (2, "Rollen", "Druckluft Allgemein, grau-orange-grau", 28.495),
  (5, "Rollen", "Seewasser, schwarz-grün-schwarz", 28.495),
  (5, "Rollen", "Brenn- u. Kraftstoff, schwarz-braun-schwarz", 28.495),
  (2, "Rollen", "Öl, schwarz-violett-schwarz", 28.495),
  (1, "Rollen", "Fortluft, weiß-schwarz-weiß", 28.495),
  (5, "Rollen", "Flussrichtung/Pfeil Grund schwarz, Druck weiss", 28.495),
  (22, "x", "Farbwechsel", 15.00),
)

#bestellung(
  reference: [4119],
  date: [27.10.2025],
  table-data: table-data,
)[
  Sehr geehrte Frau Hümmer,

  im Auftrag 4114 (Ihre Referenz 62505088) ist uns ein Fehler unterlaufen. Aus diesem Grund bestellen wir die gleiche Menge nochmals:\
  Rohrleitungskennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 25m, 90 mm breit.\
  Preise 113,98 € pro Meter.

  #underline[Lieferadresse:]\
  O P S Technik- u. Werfthandel GmbH\
  Rütersbarg 38\
  22529 Hamburg
]
