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

  font: "Source Sans 3",

  recipient: [
    Elbe Kliniken Stade-Buxtehude GmbH\
    Postfach 1365\
    21603 Buxtehude
  ],

  date: "31.05.2025",
  subject: "Rechnung 11038742 vom 18.12.2024",
)

Sehr geehrte Frau Steffens,

angefügten Kontoauszug mögen Sie bitte entnehmen, dass wir den von Ihnen angemahnten Betrag in Hohe von EUR 111,60 am 13.01.2025 überwiesen haben. Wir betrachten somit Ihre Mahnung als gegenstandslos.

Mit freundlichen Grüßen
#v(1cm)
Margreta Voss

#v(1fr)
*Anlagen:*
- Kontoauszug vom 13.01.2025
