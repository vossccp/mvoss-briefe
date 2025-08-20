#import "../templates/m-voss-bestellung.typ": bestellung

#let table-data = (
  (1, "Rollen", "Speisewasser, gelb-rot-gelb", 28.495),
  (5, "Rollen", "Frischwasser, gelb", 28.495 ),
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
  (22, "x",  "Farbwechsel", 15.00)
)

#bestellung(
  reference: [4114],
  date: [18.08.2025],
  table-data: table-data
)[
  Sehr geehrte Frau Hümmer,

  Danke für die telefonische Preisaufgabe vom 05.08.2025. Hiermit bestelle ich wie folgt:
  Rohrleitungskennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 25m.
]
