#import "../templates/m-voss.typ": ab

#let table-data = (
  (1, "Rollen", "Speisewasser, gelb-rot-gelb", 88.00),
  (5, "Rollen", "Frischwasser, gelb", 88.00),
  (5, "Rollen", "Frischkühlwasser, gelb-grün-gelb", 88.00),
  (1, "Rollen", "Kaltwasser, gelb-weiß-gelb", 88.00),
  (5, "Rollen", "Feuerlöschwasser, grün-rot-grün", 88.00),
  (5, "Rollen", "Seekühlwasser, grün-gelb-grün", 88.00),
  (5, "Rollen", "Schmutzwasser, grün-braun-grün", 88.00),
  (3, "Rollen", "Abortwasser, grün-violett-grün", 88.00),
  (5, "Rollen", "Lenzwasser, grün-schwarz-grün", 88.00),
  (1, "Rollen", "Sprühwasser, grün-blau-grün", 88.00),
  (5, "Rollen", "Dieselkraftstoff, braun-gelb-braun", 88.00),
  (2, "Rollen", "Getriebeschmieröl, violett-rot-violett", 88.00),
  (2, "Rollen", "Motorenschmieröl, violett-gelb-violett", 88.00),
  (3, "Rollen", "Schmutzöl, violett-braun-violett", 88.00),
  (3, "Rollen", "Altöl, violett-schwarz-violett", 88.00),
  (1, "Rollen", "Acethylen, grau-gelb-grau", 88.00),
  (3, "Rollen", "Steuer-/Regelluft, grau-violett-grau", 88.00),
  (1, "Rollen", "Atemluft, grau-weiß-grau", 88.00),
  (1, "Rollen", "Sauerstoff, grau-blau-grau", 88.00),
  (2, "Rollen", "Druckluft Allgemein, grau-orange-grau", 88.00),
  (5, "Rollen", "Seewasser, schwarz-grün-schwarz", 88.00),
  (5, "Rollen", "Brenn- u. Kraftstoff, schwarz-braun-schwarz", 88.00),
  (2, "Rollen", "Öl, schwarz-violett-schwarz", 88.00),
  (1, "Rollen", "Fortluft, weiß-schwarz-weiß", 88.00),
  (5, "Rollen", "Flussrichtung/Pfeil Grund schwarz, Druck weiss", 186.50),
  (22, "x", "Farbwechsel", 25.00),
)

#show: ab(
  recipient: [
    O P S Technik- u. Werfthandel GmbH\
    Rütersbarg 38\
    22529 Hamburg
  ],
  your-reference: [Herr Gregorius],
  your-message-date: [12.08.2025],
  reference: [4114],
  date: [18.08.2025],
  table-data: table-data,
)[
  Sehr geehrte Herr Gregorius,

  hiermit bestätige ich Ihren Auftrag zur Bestellung 40425 vom 12.08.2025 wie folgt:
  Rohrleitungskennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 50m, 90 mm breit.
]
