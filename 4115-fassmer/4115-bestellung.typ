#import "../templates/m-voss.typ": bestellung

#let table-data = (
  (3, "Stück", "Hydrauliköl orange-grau-orange, 90mm breit", 28.495),
  (3, "Stück", "Kühlwasser blau-lila (violet)-blau 90mm breit", 28.495),
  (3, "Stück", "Diesel (MDO) braun-gelb-braun 90mm breit", 28.495),
  (3, "Stück", "Altöl schwarz-braun-schwarz 90mm breit", 28.495),
  (4, "Stück", "Schwarzwasser schwarz-blau-schw. 90mm breit", 28.495),
  (4, "Stück", "Bilgenwasser schwarz-grün-schw. 90mm breit", 28.495),
  (4, "Stück", "san. Grauwasser schwarz-weiss-schw. 90mm breit", 28.495),
  (1, "Stück", "Acetylene gelb-grau-gelb 90mm breit", 28.495),
  (3, "Stück", "Seekühlwasser grün-gelb-grün 90mm breit", 28.495),
  (1, "Stück", "Nitrogen(Stickstoff) grau-grün-grau 90mm breit", 28.495),
  (3, "Stück", "Feuerlöschwasser rot-grün-rot 90mm breit", 28.495),
  (2, "Stück", "Kontrolluft grau-violett-grau 90mm breit", 28.495),
  (1, "Stück", "Sauerstoff grau-blau-grau 90mm breit", 28.495),
  (4, "Stück", "san. Frischwasser blau-braun-blau 90mm breit", 28.495),
  (4, "Stück", "Kondensat blau-gelb-blau 90mm breit", 28.495),
  (4, "Stück", "Ballastwasser grün-violett-grün 90mm breit", 28.495),
  (4, "Stück", "Arbeitsluft grau-orange-grau 90mm breit", 28.495),
  (1, "Stück", "Feuerlöschgas rot-grau-rot 90mm breit", 28.495),
  (3, "Stück", "Schmieröl orange-gelb-orange 90mm breit", 28.495),
  (3, "Stück", "Sprinkler Wasser rot-orange-rot 90mm breit", 28.495),
  (1, "Stück", "Feuerlöschpulver rot-weiß-rot 90mm breit", 28.495),
  (3, "Stück", "Kaltwasser blau-weiss-blau 90mm breit", 28.495),
  (2, "Stück", "Säure/Basen violett 90mm breit", 28.495),
  (20, "Stück", "Pfeile 50mm breit", 28.495),
  (2, "Stück", "Seewasser grün 90mm breit", 28.495),
  (3, "Stück", "Destillat Wasser blau-grau-blau 90mm breit", 28.495),
  (4, "Stück", "Heizung Wasser blau-silber-blau 90mm breit", 28.495),
  (21, "x", "Farbwechsel", 15.00),
)

#bestellung(
  reference: [4115],
  date: [18.08.2025],
  table-data: table-data,
)[
  Sehr geehrte Frau Hümmer,

  Danke für die telefonische Preisaufgabe vom 05.08.2025. Hiermit bestelle ich wie folgt:
  Rohrleitungskennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 25m, 90 mm breit.\
  Preis pro 100 Meter: 135,67 €

  #underline()[Lieferadresse]\
  Fr. Fassmer GmbH\
  Industriestrasse 2\
  27804 Berne
]
