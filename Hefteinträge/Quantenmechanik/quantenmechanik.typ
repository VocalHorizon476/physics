
#align(center + horizon)[
  #text(size: 24pt, weight: "bold")[Quantenmechanik]

  #v(1cm)
  #text(
    size: 14pt,
    fill: gray,
  )[ Herr Dr. Kurfürst Dr. Dr. Baron Inquisitor Dr. Prof. Erzbischof Prof. Graf Dr. Prof. Tepe]

  #v(2cm)
  #text(size: 12pt)[Arthur Thiele\ Matrixnummer: 476]

  #v(1cm)
  #text(size: 10pt)[Abgabedatum: #datetime.today().display("[day].[month].[year]")]
]


#pagebreak()
= Der Lichtelektrische (Photo-) Effekt

== Versuchsaufbau:
#align(center)[#image("images/Lichelektrische (Photo-) Effekt.png", width: 60%)]


== Beobachtungen

#align(center)[
  #table(
    columns: 4,
    align: center + horizon,
    inset: 8pt,

    // Linien nur im eigentlichen Tabellenbereich (ab Spalte 1 / Zeile 1)
    stroke: (x, y) => (
      left: if x >= 2 and y >= 1 { 0.8pt },
      top: if y >= 2 and x >= 1 { 0.8pt },
    ),

    [], [], table.cell(colspan: 2)[*Lampe*],
    [], [], [Kohlebogen], [UV],

    table.cell(rowspan: 2)[#rotate(-90deg, reflow: true)[*Ladung*]],

    [+], [Ladung bleibt auf Platte], [Ladung bleibt auf Platte],
    [-], [Ladung bleibt auf Platte], [Ladung fließt ab],
  )
]


#v(1em)
== Deutungen:

- Das UV-Licht ist in der Lage, aus der Zinkplatte Elektronen zu lösen.
- Die Intensität des Lichts spielt keine Rolle, die Wellenlänge schon.

#v(1em)
== Interpretationen:
- Licht überträgt seine Energie in Form kleinster Energiepakete auf die Elektronen in der Platte.
- Die Energie dieser Pakete hängt nur von deren Wellenlänge ab

*Def.: * Die kleinsten Lichteneergiepakete nennt man #underline[Photonen].

#v(0.5em)
$=>$ Die Natur des Lichts ist doppeldeutig:\
Im Wellenmodell entspricht die Intensität  dem Amplituden-quadrat des E- oder B-Feldes. Im Photonenmodell ist die Anzahl der Photonen ein Maß für Lichtintensität.\

$*$ Die Wellenlängenabhängigkeit ergibt sich hier über die Mittelung über eine Periode der Welle.

#pagebreak()


== Versuch:



== Durchführung:

== Beobachtungen:

#align(center)[
  #table(
    columns: (13%, 13%),

    [*$lambda$ (nm)*], [*$U_0$ (V)*],
    [436], [1,993],
    [366], [1,436],
    [405], [1,106],
    [546], [0,443],
    [576], [0.362],
  )
]
