#import "@preview/letter-pro:3.0.0": letter-simple

#set text(lang: "de")

#show: letter-simple.with(
  sender: (
    name: "Margreta Voss",
    address: "Issendorfer Weg 13b, 21698 Harsefeld",
    extra: [
      Telefon: #link("tel:+41644603")[+49 4164 4603]\
      E-Mail: #link("mailto:info@technische-klebeschilder.de")[info\@technische-klebeschilder.de]\
    ],
  ),

  recipient: [
    Barmenia Krankenversicherung AG \
    Postfach 10 04 40 \
    42004 Wuppertal
  ],

  font: "Source Sans 3",

  reference-signs: (
    ([Versicherungsnummer], [08829972T00]),
  ),

  date: "08.06.2025",
  subject: "Antrag auf Übernahme der Kosten für eine Aufstehhilfe",
)

Sehr geehrte Damen und Herren,

hiermit beantrage ich die Übernahme der Kosten für eine Aufstehhilfe gemäß beigefügtem Kostenvoranschlag.

#v(1em)
Mit freundlichen Grüßen
#v(1em)
i.A. Carsten Voss

#v(1fr)
*Anlagen:*
- Kostenvoranschlag
