#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot

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

= Bestimmung der Photonenenergie mit der Gegenfeldmethode
== Versuch:
#align(center)[#image("images/Bestimmung der Photonenenergie mit der Gegenfeldmethode.png", width: 70%)]



== Durchführung:
Das Licht einer Quecksilberdampflampe wird durch einen Farbfilter auf eine Metalloberfläche geleitet, die Cäsium enthält. Der Photoeffekt löst dort Elektronen aus. Überwinden die Elektronen das angelegte E-Feld, so kann ein Stromfluss vom Draht gemessen werden. \
Abhängig von der Wellenlänge des Farbfilters wird die Spannung U so veriiert, dass kein Stromfluss mehr messbar, die kinetische Energie der Elektronen also maximal der potenztiellen Energie im E-Feld entspricht.

#v(1em)
== Beobachtungen:

#align(center)[
  #table(
    columns: (13%, 13%, auto, auto),
    stroke: 0.5pt + gray,

    [*$lambda$ (nm)*], [*$U_0$ (V)*], [*$f$ ($10^14$ Hz)*], [*$E_("kin,max")$ (eV)*],

    [436], [1,993], [6,876], [0,986],
    [366], [1,436], [8,191], [1,436],
    [405], [1,106], [7,402], [1,106],
    [546], [0,443], [5,491], [0,443],
    [576], [0.362], [5,187], [0,362],
  )
]

#v(1em)
== F-E-Diagramm
$
  f & = e/lambda \
  E & = U dot q = U dot e^-
$


== Ergebnis
// Diagramm direkt aus den Messwerten der Tabelle erzeugt.
// punkte: (f in 10^14 Hz, E_kin,max in eV)
#let punkte = (
  (8.191, 1.436),
  (7.402, 1.106),
  (6.876, 0.986),
  (5.491, 0.443),
  (5.187, 0.362),
)
// Ausgleichsgerade E = h*f - W_A, umgerechnet auf die Diagramm-Einheiten:
// h = 5.73e-34 J*s / 1.602e-19 J/eV * 1e14 Hz = 0.3577 eV je 10^14 Hz
#let m = 0.3577
#let b = -1.50

#align(center)[
  #canvas({
    plot.plot(
      size: (12, 7),
      axis-style: "school-book",
      x-label: [$f$ in $10^14$ Hz],
      y-label: [$E_("kin,max")$ in eV],
      x-min: 0,
      x-max: 9.5,
      y-min: -1.8,
      y-max: 1.8,
      x-tick-step: 1,
      y-tick-step: 0.5,
      {
        // Ausgleichsgerade
        plot.add(
          domain: (0, 9.5),
          samples: 2,
          style: (stroke: blue + 1.4pt),
          label: [$E = h dot f - W_A$],
          f => m * f + b,
        )
        // Messpunkte
        plot.add(
          punkte,
          style: (stroke: none),
          mark: "o",
          mark-size: 0.15,
          mark-style: (fill: red, stroke: red),
          label: [Messwerte],
        )
        plot.annotate({
          import draw: *
          // Grenzfrequenz (Nullstelle der Geraden)
          circle((-b / m, 0), radius: 0.10, fill: green.darken(20%), stroke: none)
          line((-b / m, 0), (-b / m, -0.9), stroke: (paint: gray, dash: "dashed"))
          content((-b / m, -1.15), text(size: 9pt)[$f_g = 4.20$])
          // Austrittsarbeit (y-Achsenabschnitt)
          circle((0, b), radius: 0.10, fill: green.darken(20%), stroke: none)
          line((0, b), (1.7, b), stroke: (paint: gray, dash: "dashed"))
          content((2.7, b), text(size: 9pt)[$-W_A = -1.50$])
        })
      },
    )
  })
]


$
  => E_("kin", max) = & h dot f - E_A \
                      & "h = Plancksche Wirkungskonstante" \
$

Literaturwert:
$
  h & = 6.626 dot 10^(-34) underbrace("Js", "Einheit einer 'Wirkung'")
$

== Auswertung:

#table(
  columns: (auto, auto, auto),
  align: (left, right, left),
  stroke: 0.5pt + gray,
  inset: 7pt,
  [*Größe*], [*Messwert*], [*Bemerkung*],
  [Steigung $h$], [$5.73 dot 10^(-34) " J" dot "s"$], [Lit.: $6.626 dot 10^(-34)$, $-14 %$],
  [Austrittsarbeit $W_A$], [$1.50 " eV"$], [$= 2.41 dot 10^(-19) " J"$],
  [Grenzfrequenz $f_g$], [$4.20 dot 10^(14) " Hz"$], [$lambda_g = 713 " nm"$],
)

#pagebreak()
= Messung des Planckschen Wirkungsquantums mit Leuchtdioden




$
    U & = U_D + U_R \
      & = U_D + I R \
  U_D & = U - I R
$

== Durchführung:

Messung der Kennlinien:

