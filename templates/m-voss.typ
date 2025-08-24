#let format-currency(number, precision: 2, locale: "de") = {
  assert(precision > 0)
  let s = str(calc.round(number, digits: precision))
  let after_dot = s.find(regex("\..*"))
  if after_dot == none {
    s = s + "."
    after_dot = "."
  }
  for i in range(precision - after_dot.len() + 1) {
    s = s + "0"
  }
  // fake de locale
  if locale == "de" {
    s.replace(".", ",")
  } else {
    s
  }
}

#let m-voss-brief(
  recipient: none,
  reference: none,
  your-reference: none,
  your-message-date: none,
  date: none,
  body,
) = {
  set text(lang: "de", region: "DE")

  let page-counter = counter(page)

  set page(
    paper: "a4",
    margin: (top: 11.25cm, right: 2cm, bottom: 3cm, left: 2.2cm),
    background: image("background.png", width: 100%, height: 100%),
    header: context {
      if recipient != none {
        place(
          top + left,
          dx: 0cm,
          dy: 4.9cm,
          block(
            width: 8.5cm,
            text(size: 12pt)[#recipient],
          ),
        )
      }

      place(
        top + left,
        dx: 0cm,
        dy: 10.25cm,
        block(width: 16cm)[
          #grid(
            columns: (3.9cm, 4.8cm, 4cm, 3.5cm),
            rows: 0.5cm,
            gutter: 0.5cm,

            text(size: 9pt)[#your-reference],
            text(size: 9pt)[#your-message-date],
            text(size: 9pt)[vos/s],
            text(size: 9pt)[#date],
          )
        ],
      )

      if page-counter.get().first() > 1 {
        place(
          top + right,
          dx: 0cm,
          dy: 8.5cm,
          block(width: 5cm)[
            #align(right)[*Seite #page-counter.display()*]
          ],
        )
      }
    },
  )

  [
    #set text(size: 1.2em)
    *#reference*
  ]

  v(1em)

  body

  v(1em)
  [
    Mit freundlichen Grüßen
  ]
}

#let ab(
  recipient: none,
  reference: none,
  your-reference: none,
  your-message-date: none,
  date: none,
  table-data: none,
  footer: none,
  body,
) = {
  m-voss-brief(
    recipient: recipient,
    reference: [
      Auftragsbestätigung #reference
    ],
    your-reference: your-reference,
    your-message-date: your-message-date,
    date: date,
  )[
    #body

    #if table-data != none {
      [
        #table(
          columns: (auto, auto, 1fr, auto, auto),
          align: (right, left, left, right, right),
          stroke: none,

          // Header row that repeats on each page
          table.header(
            table.cell(stroke: (bottom: 1pt))[*Menge*],
            table.cell(stroke: (bottom: 1pt))[],
            table.cell(stroke: (bottom: 1pt))[*Bezeichnung*],
            table.cell(stroke: (bottom: 1pt))[*Preis*],
            table.cell(stroke: (bottom: 1pt))[*Gesamt*],
          ),

          ..for row in table-data {
            (
              [#row.at(0)],
              [#row.at(1)],
              [#row.at(2)],
              [#format-currency(row.at(3), precision: 3)],
              [#format-currency(row.at(0) * row.at(3))],
            )
          },

          [], [], [], [], [],
          [], [], [*Gesamt netto*], [], [*#format-currency(table-data.map(row => row.at(0) * row.at(3)).sum())*],
          [],
          [],
          [Mehrwertsteuer 19%],
          [],
          [#format-currency(table-data.map(row => row.at(0) * row.at(3)).sum() * 0.19)],
          [],
          [],
          [*Gesamt brutto*],
          [],
          [*#format-currency(table-data.map(row => row.at(0) * row.at(3)).sum() * 1.19)*],
        )
      ]
    }

    #if footer != none {
      footer
    } else {
      [
        Lieferung: innerhalb von 4 Wochen nach Auftragsdatum\
        Zahlung: innerhalb von 14 Tagen mit 2% Skonto, innerhalb von 30 Tagen netto
      ]
    }
  ]
}

#let bestellung(
  reference: none,
  your-reference: none,
  your-message-date: none,
  date: none,
  table-data: none,
  footer: none,
  body,
) = {
  m-voss-brief(
    recipient: [
      CCL Design Stuttgart GmbH - Werk Nürnberg \
      Haimendorfer Str. 57 \
      90571 Schwaig
    ],
    reference: [
      Bestellung #reference
    ],
    your-reference: [Frau Hümmer],
    your-message-date: your-message-date,
    date: date,
  )[
    #body

    #if table-data != none {
      [
        #table(
          columns: (auto, auto, 1fr, auto, auto),
          align: (right, left, left, right, right),
          stroke: none,

          // Header row that repeats on each page
          table.header(
            table.cell(stroke: (bottom: 1pt))[*Menge*],
            table.cell(stroke: (bottom: 1pt))[],
            table.cell(stroke: (bottom: 1pt))[*Bezeichnung*],
            table.cell(stroke: (bottom: 1pt))[*Preis*],
            table.cell(stroke: (bottom: 1pt))[*Gesamt*],
          ),

          ..for row in table-data {
            (
              [#row.at(0)],
              [#row.at(1)],
              [#row.at(2)],
              [#format-currency(row.at(3), precision: 3)],
              [#format-currency(row.at(0) * row.at(3))],
            )
          },

          [], [], [], [], [],
          [], [], [*Gesamt netto*], [], [*#format-currency(table-data.map(row => row.at(0) * row.at(3)).sum())*],
        )
      ]
    }
  ]
}
