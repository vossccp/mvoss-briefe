// Helper function to format currency with German formatting
#let format-euro(value) = {
  // Ensure two decimal places
  let formatted = if calc.round(value, digits: 2) == calc.round(value, digits: 0) {
    str(int(value)) + ",00"
  } else {
    let parts = str(calc.round(value, digits: 2)).split(".")
    if parts.len() == 1 {
      parts.at(0) + ",00"
    } else if parts.at(1).len() == 1 {
      parts.at(0) + "," + parts.at(1) + "0"
    } else {
      parts.at(0) + "," + parts.at(1)
    }
  }

  // Add thousand separators
  let integer-part = formatted.split(",").at(0)
  let decimal-part = formatted.split(",").at(1)

  // Add dots as thousand separators
  let with-thousands = ""
  let chars = integer-part.clusters()
  let len = chars.len()
  for i in range(len) {
    with-thousands += chars.at(i)
    if (len - i - 1) > 0 and calc.rem(len - i - 1, 3) == 0 {
      with-thousands += "."
    }
  }

  with-thousands + "," + decimal-part + " €"
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
  let page-counter = counter(page)

  set page(
    paper: "a4",
    margin: (top: 11.25cm, right: 2cm, bottom: 3cm, left: 2.2cm),
    background: image("background.png", width: 100%, height: 100%),
    header: context {
      place(
        top + left,
        dx: 0cm,
        dy: 4.9cm,
        block(
          width: 8.5cm,
          text(size: 12pt)[
            CCL Design Stuttgart GmbH - Werk Nürnberg \
            Haimendorfer Str. 57 \
            90571 Schwaig
          ],
        ),
      )

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

  text(size: 12pt)[
    *Bestellung #reference*
    #v(1em)
  ]

  body

  if table-data != none {
    table(
      columns: (1.5cm, 1.5cm, 9cm, 2.5cm, 2.5cm),
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
        ([#row.at(0)], [#row.at(1)], [#row.at(2)], [#format-euro(row.at(3))], [#format-euro(row.at(0) * row.at(3))])
      },

      [], [], [], [], [],
      [], [], [*Gesamt netto*], [], [*#format-euro(table-data.map(row => row.at(0) * row.at(3)).sum())*],
    )
  }

  block()[
    #v(1em)
    Mit freundlichen Grüßen
  ]
}
