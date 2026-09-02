#import "@preview/cetz:0.4.2": canvas, decorations, draw
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
// Prinzipskizze: Zusammenhang E_kin,max = h*f - E_A.
// Bewusst ohne Messpunkte, Skala und Legende -- nur die Aussage.
#align(center)[
  #canvas({
    import draw: *

    let m = 0.62 // Steigung (entspricht h)
    let ea = 2.0 // Austrittsarbeit (Betrag)
    let xende = 8.6 // Ende der x-Achse
    let xgerade = 7.6 // Ende der Geraden

    // --- Achsen ---
    line((-0.7, 0), (xende, 0), mark: (end: ">", scale: 1.6), stroke: 1.2pt)
    line((0, -2.7), (0, 3.4), mark: (end: ">", scale: 1.6), stroke: 1.2pt)
    content((xende + 0.4, -0.35), $f$)
    content((0.15, 3.8), $E_("kin,max")$, anchor: "west")

    // --- Gerade E = h*f - E_A ---
    line((0, -ea), (xgerade, m * xgerade - ea), stroke: rgb("#4a9df0") + 1.8pt)

    // --- Markierung des y-Achsenabschnitts ---
    line((-0.2, -ea), (0.2, -ea), stroke: 1.2pt)

    // --- geschweifte Klammer fuer die Austrittsarbeit ---
    decorations.flat-brace(
      (-0.85, -ea),
      (-0.85, 0),
      amplitude: 0.32,
      stroke: 1.1pt,
      name: "kl",
    )
    content(
      (-1.35, -ea / 2),
      align(right)[Austritts-\ arbeit $E_A$],
      anchor: "east",
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

== Abbildung:
#image("images/Abbildung - Plancksche Wirkung.png", width: 100%)

== Versuchsaufbau:

#grid(
  columns: (50%, 25%, 25%),

  [
    #align(center)[#image("images/Versuchsaufbau - Plancksche Wirkung.png", width: 80%)]
  ],
  align(horizon)[
    $
        U & = U_D + U_R \
          & = U_D + I R \
      U_D & = U - I R
    $
  ],
  [],
)



#v(1em)
== Durchführung:

Messung der Kennlinien:
#image("images/Durchführung - Plancksche Wirkung.png", width: 100%)



#pagebreak()
== Messwerte
#v(1em)
#align(center)[
  #table(
    columns: (10%, 15%, 15%, 15%, 20%),
    stroke: 0.5pt,
    //(x, y) => (
    //top: if y == 0 { none } else { 0.5pt },
    //),
    table.cell(rowspan: 2)[LED],
    table.cell(rowspan: 2)[$lambda (n m)$],
    table.cell(colspan: 2)[Ausgleichsgerade],
    table.cell(rowspan: 2)[$U_s = - B/A (V)$],
    [$A ( (m A)/U)$], [$B ( m A)$],
    [grün], [514], [2,231], [-3,99], [1,79],
    [rot], [632], [1,954], [-3,29], [1,68],
    [blau], [463], [1,846], [-4,75], [2,57],
    [UV], [399], [/], [/], [3,08],
    [IR], [921], [1,950], [-1,94], [0.99],
  )]


#v(1em)
#grid(
  columns: (1fr, 1fr),
  [
    $
      U_D & = U - I R \
        I & = A dot U + B \
        U & = (I - B)/A
    $

  ],
  [
    $
      U_D & = I/A - B/A - I R \
          & = (1/A -R) dot I - B/A \
      U_s & = U_D (I = 0) = - B/A
    $
  ],
)

#v(1em)
== Auswertung (f-E-Diagramm):
#align(center)[#image("images/Auswertung f-E-Diagramm.png", width: 60%)]

// Zeichnung

grün scheint einem Fehler zu unterliegen und wird nicht verwendet.


#v(2em)
== Ergebnis:

$
  E(f) & = 7.89 dot 10^(-22) J/(T H z) dot f - 1.00 dot 10^(-19) J \
       & = underbrace(7.89 dot 10^(-34) J/(H z), "h gemessen") dot f - 1.00 dot 10^(-19) J \
$

$=>$ Das Ergebnis für h liegt nahe am Literaturwert von $h = 6.626 dot 10^(-34) "Js"$


#pagebreak()
= Interferenz am Kristallgitter

#v(1em)
#align(center)[#image("images/Interferenz am Kristallgitter.png", width: 70%)]

$
  l & =
$
