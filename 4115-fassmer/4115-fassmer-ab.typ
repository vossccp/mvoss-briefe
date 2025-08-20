#set page(
  paper: "a4",
  margin: (top: 2cm, right: 2cm, bottom: 3cm, left: 2.2cm),
  background: image("background.png", width: 100%, height: 100%)
)

// Define letter data to be reused
#let letter-data = (
  recipient: [
    Fr. Fassmer GmbH \
    Industriestrasse 2 \
    27804 Berne
  ],
  your-reference: [Herr Flügger],
  your-message-date: [12.08.2025],
  my-reference: [Vo/s],
  date: [18.08.2025],
)


// Function to display recipient address
#let show-recipient(dy-offset: 3cm) = {
  place(
    top + left,
    dx: 0cm,
    dy: dy-offset,
    block(
      width: 8.5cm,
      letter-data.recipient
    )
  )
}

// Function to display reference fields
#let show-references(dy-offset: 8.3cm) = {
  place(
    top + left, 
    dx: 0cm,
    dy: dy-offset,
    block(width: 16cm)[
      #grid(
        columns: (3.9cm, 4.8cm, 4cm, 3.5cm),
        rows: (0.5cm, 0.8cm, 0.5cm, 0.8cm),
        gutter: 0.5cm,
        
        text(size: 9pt)[#letter-data.your-reference],
        text(size: 9pt)[#letter-data.your-message-date],
        text(size: 9pt)[#letter-data.my-reference],
        text(size: 9pt)[#letter-data.date],
      )
    ]
  )
}

#let show-page-number() = {
  place(
    top,
    dx: 0cm,
    dy: 9.2cm,
    block[
      #context {
        text()[Seite #counter(page).display()]
      }
    ]
  )
}

#set text(lang: "de", size: 11pt)

#show-recipient()
#show-references()

#v(9.5cm)

#text(weight: "bold")[
  Auftragsbestätigung Nr. 4115
]

#v(0.5cm)

// Salutation
Sehr geehrte Herr Flügger,

#v(0.3cm)

hiermit bestätige ich Ihren Auftrag zur Bestellung 2506836 vom 12.08.2025 wie folgt:
Rohrleitungskennzeichnungsbänder aus Folie 3100 und Laminat 7746 auf Rollen a 25m.

#v(0.3cm)

#table(
  columns: (1.5cm, 1.5cm, 7.5cm, 2.5cm, 2.5cm),
  align: (right, left, left, right, right),
  stroke: none,
  
  // Header row that repeats on each page
  table.header(
    [*Menge*], [], [*Bezeichnung*], [*Preis*], [*Gesamt*],
  ),
  
  // Data rows from table-temp.md
  [3], [Stück], [Hydrauliköl orange-grau-orange, 90mm breit], [43,00 €], [129,00 €],
  [3], [Stück], [Kühlwasser blau-lila (violet)-blau 90mm breit], [43,00 €], [129,00 €],
  [3], [Stück], [Diesel (MDO) braun-gelb-braun 90mm breit], [43,00 €], [129,00 €],
  [3], [Stück], [Altöl schwarz-braun-schwarz 90mm breit], [43,00 €], [129,00 €],
  [4], [Stück], [Schwarzwasser schwarz-blau-schw. 90mm breit], [43,00 €], [172,00 €],
  [4], [Stück], [Bilgenwasser schwarz-grün-schw. 90mm breit], [43,00 €], [172,00 €],
  [4], [Stück], [san. Grauwasser schwarz-weiss-schw. 90mm breit], [43,00 €], [172,00 €],
  [1], [Stück], [Acetylene gelb-grau-gelb 90mm breit], [43,00 €], [43,00 €],
  [3], [Stück], [Seekühlwasser grün-gelb-grün 90mm breit], [43,00 €], [129,00 €],
  [1], [Stück], [Nitrogen(Stickstoff) grau-grün-grau 90mm breit], [43,00 €], [43,00 €],
  [3], [Stück], [Feuerlöschwasser rot-grün-rot 90mm breit], [43,00 €], [129,00 €],
  
  // Empty row for spacing
  [], [], [], [], [],
  
  // Subtotal page 1
  [], [], [*Übertrag*], [], [*1.376,00 €*],
)

#pagebreak()

#show-recipient()
#show-references()
#show-page-number()

#v(10cm)  

#table(
  columns: (1.5cm, 1.5cm, 7.5cm, 2.5cm, 2.5cm),
  align: (right, left, left, right, right),
  stroke: none,
  
  // Header row that repeats on each page
  table.header(
    [*Menge*], [], [*Bezeichnung*], [*Preis*], [*Gesamt*],
  ),
  
  // Carryover from page 1
  [], [], [*Übertrag von Seite 1*], [], [*1.376,00 €*],
  
  // Empty row for spacing
  [], [], [], [], [],
  
  // Data rows from table-temp.md
  [2], [Stück], [Kontrolluft grau-violett-grau 90mm breit], [43,00 €], [86,00 €],
  [1], [Stück], [Sauerstoff grau-blau-grau 90mm breit], [43,00 €], [43,00 €],
  [4], [Stück], [san. Frischwasser blau-braun-blau 90mm breit], [43,00 €], [172,00 €],
  [4], [Stück], [Kondensat blau-gelb-blau 90mm breit], [43,00 €], [172,00 €],
  [4], [Stück], [Ballastwasser grün-violett-grün 90mm breit], [43,00 €], [172,00 €],
  [4], [Stück], [Arbeitsluft grau-orange-grau 90mm breit], [43,00 €], [172,00 €],
  [1], [Stück], [Feuerlöschgas rot-grau-rot 90mm breit], [43,00 €], [43,00 €],
  [3], [Stück], [Schmieröl orange-gelb-orange 90mm breit], [43,00 €], [129,00 €],
  [3], [Stück], [Sprinkler Wasser rot-orange-rot 90mm breit], [43,00 €], [129,00 €],
  [1], [Stück], [Feuerlöschpulver rot-weiß-rot 90mm breit], [43,00 €], [43,00 €],
  [3], [Stück], [Kaltwasser blau-weiss-blau 90mm breit], [43,00 €], [129,00 €],
  [2], [Stück], [Säure/Basen violett 90mm breit], [43,00 €], [86,00 €],
  [20], [Stück], [Pfeile 50mm breit], [43,00 €], [860,00 €],
  [2], [Stück], [Seewasser grün 90mm breit], [43,00 €], [86,00 €],
  
  // Empty row for spacing
  [], [], [], [], [],
  
  // Subtotal page 2
  [], [], [*Übertrag*], [], [*3.698,00 €*],
)

#pagebreak()

#show-recipient()
#show-references()
#show-page-number()

#v(10cm)  

#table(
  columns: (1.5cm, 1.5cm, 7.5cm, 2.5cm, 2.5cm),
  align: (right, left, left, right, right),
  stroke: none,
  
  // Header row that repeats on each page
  table.header(
    [*Menge*], [], [*Bezeichnung*], [*Preis*], [*Gesamt*],
  ),
  
  // Carryover from page 2
  [], [], [*Übertrag von Seite 2*], [], [*3.698,00 €*],
  
  // Empty row for spacing
  [], [], [], [], [],
  
  // Data rows from table-temp.md
  [3], [Stück], [Destillat Wasser blau-grau-blau 90mm breit], [43,00 €], [129,00 €],
  [4], [Stück], [Heizung Wasser blau-silber-blau 90mm breit], [43,00 €], [172,00 €],
  [21], [x], [Farbwechsel], [25,00 €], [525,00 €],
  
  // Empty row for spacing
  [], [], [], [], [],
  
  // Subtotal row
  [], [], [Zwischensumme], [], [4.524,00 €],
  
  // Tax row
  [], [], [zzgl. 19% MwSt.], [], [859,56 €],
  
  // Total row
  table.cell(colspan: 3)[*Gesamtbetrag*], 
  table.cell(colspan: 2, align: right)[*5.383,56 €*],
)


#v(0.5cm)

Lieferung: KW 39 per Post.


Zahlung: innerhalb 14 mit 2% Skonto oder 30 Tage netto


#v(0.5cm)

Mit freundlichen Grüßen

// Optional: Attachments section at the bottom
#v(1fr)
// Uncomment if needed:
// *Anlagen:*
// - Anlage 1
// - Anlage 2
