#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot

#page(
  paper: "a4",
  height: auto,
  margin: 0pt,
)[
  #image("images/Schwingungen und Wellen.pdf", page: 1, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 2, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 3, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 4, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 5, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 6, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 7, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 8, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 9, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 10, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 11, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 12, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 13, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 14, width: 100%)
  #pagebreak()
  #image("images/Schwingungen und Wellen.pdf", page: 15, width: 100%)
]



= Zeigerformalismus
#v(0.5em)

Beispiel: Feder-Masse-Pendel
#v(1em)

#grid(
  columns: (1fr, 1fr, 1fr),
  align: center + horizon,
  $
      m & = 1 "kg" \
      D & = 1 "kg"/s^2 \
    y_0 & = 5 "cm" \
      t & = 2.5 "s"
  $,

  $ omega = sqrt(D/m) = sqrt((1 ("kg")/s^2)/(1 "kg")) = 1 $,

  $
    alpha & = omega t + phi \
          & = 1 dot 2.5 + pi/2 \
          & approx 4.1
  $,
)

#v(0.5cm)
#grid(
  columns: (1fr, 1fr),
  align: center + horizon,
  gutter: 2em,
  canvas({
    import draw: *

    let r = 2.5
    let alpha = 2.5 + calc.pi / 2
    let alpha-deg = alpha * 180 / calc.pi

    let px = r * calc.cos(alpha)
    let py = r * calc.sin(alpha)

    // Equal-length axes
    line((-r - 0.6, 0), (r + 0.6, 0), mark: (end: ">"))
    line((0, -r - 0.6), (0, r + 0.6), mark: (end: ">"))
    content((r + 0.95, 0), $x$)
    content((0.25, r + 0.85), $y$)

    // Arc from x-axis to phasor direction (anchor: "origin" = (0,0) is centre)
    arc((0, 0), start: 0deg, stop: alpha-deg * 1deg, radius: r, anchor: "origin", stroke: gray + 0.5pt)

    // Dashed projection to y-axis
    line((px, py), (0, py), stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))

    // y(t) on y-axis
    line((0, 0), (0, py), stroke: red + 2pt)
    content((0.5, py / 2), $y(t)$)

    // Phasor (Zeiger)
    line((0, 0), (px, py), mark: (end: ">"), stroke: blue + 1.5pt)
    content((px / 2 - 0.25, py / 2 + 0.25), $y_0$)

    // Degree label at midpoint of arc, placed outside
    let mid = alpha / 2
    let label-r = r + 0.5
    content(
      (-0.5, 0.5),
      [#calc.round(alpha-deg)°],
    )
  }),
  $
      y (t) & = y_0 dot sin (omega t + phi) \
    y (2.5) & = 5 "cm" dot sin (4.1) \
    y (2.5) & = 3.99 "cm"
  $,
)


#v(1em)
Die Zeigerdarstellung trennt Auslenkung (z.B. $y_0$) vom #underline[Phasenwinkel] $alpha(t)$ darstellerisch.\
Der Phasenwinkel setzt sich aus einer konstanten Phase $phi$ und einem zeitabhängigen Winkelanteil $omega t$ zusammen\

Sowohl Sinus-/ Kosinusdarstellung als auch die Zeigerdarstellung bilden eine Schwingung vollständig ab.

#v(1em)


#pagebreak()
= Wellen
#v(0.2cm)
*Def.:* Wellen sind die räumliche Ausbreitung von Schwingungen in Abhängigkeit von der Zeit.\

#v(0.5cm)
*Räumliche Sichtweise (t fest) - Mit $lambda$*

#align(center)[
  #canvas({
    plot.plot(
      size: (13, 5),
      axis-style: "school-book",
      x-label: $x$,
      y-label: $y$,
      x-tick-step: none,
      y-tick-step: none,
      x-min: -5,
      x-max: 10,
      y-min: -6,
      y-max: 6,
      {
        plot.add(
          domain: (-5, 10),
          samples: 200,
          style: (stroke: blue + 1.2pt),
          t => 5 * -calc.cos(calc.pi / 3 * t + calc.pi / 2),
        )
        plot.annotate({
          import draw: *
          line((-1.5, -5.2), (4.5, -5.2), mark: (start: ">", end: ">"))
          content((1.5, -5.75), $lambda$)

          line((0, -0.5), (3, -0.5), mark: (start: ">", end: ">"))
          content((1.5, -1.5), $lambda / 2$)

          line((-0.5, 0), (-0.5, 5), mark: (start: ">", end: ">"))
          content((-0.75, 2.5), $y_0$)
        })
      },
    )
  })
]

#v(0.2cm)

#grid(
  columns: (auto, 1fr),
  align: left + horizon,
  [
    $y_0$: Amplitude\
    $lambda$: Wellenlänge [$lambda$] = 1m\
    k: Wellenzahl $[k] = 1/m$\
    $v$: Ausbreitungsgeschwindigkeit $[v] = 1 m/s$
  ],
  [
    $ y(x,...) = y_0 dot sin lr((underbrace((2 pi)/lambda, k) dot x + ...), size: #60%) $
  ],
)

#v(2cm)

*Räumliche Sichtweise (t fest) - Mit $T$*
#align(center)[
  #canvas({
    plot.plot(
      size: (13, 5),
      axis-style: "school-book",
      x-label: $x$,
      y-label: $y$,
      x-tick-step: none,
      y-tick-step: none,
      x-min: -5,
      x-max: 10,
      y-min: -6,
      y-max: 6,
      {
        plot.add(
          domain: (-5, 10),
          samples: 200,
          style: (stroke: blue + 1.2pt),
          t => 5 * -calc.cos(calc.pi / 3 * t + calc.pi / 2),
        )
        plot.annotate({
          import draw: *
          line((-1.5, -5.2), (4.5, -5.2), mark: (start: ">", end: ">"))
          content((1.5, -5.75), $T$)

          line((0, -0.5), (3, -0.5), mark: (start: ">", end: ">"))
          content((1.5, -1.5), $T / 2$)

          line((-0.5, 0), (-0.5, 5), mark: (start: ">", end: ">"))
          content((-0.75, 2.5), $y_0$)
        })
      },
    )
  })
]
#v(0.2cm)
#grid(
  columns: (auto, 1fr),
  align: left + horizon,
  gutter: 2em,
  [
    $T$: Periodendauer $[T] = s$ \
    $omega$: Winkelgeschwindigkeit $[omega] = 1/s$ \
    $f$: $1/T$ Frequenz $[f] = 1 "Hz"$ \
    => $v = lambda/T = lambda dot f$
  ],
  [
    $ y (..., t) = y_0 dot sin lr((...underbrace((2pi)/T, omega) dot t ...), size: #60%) $
  ],
)

#v(0.5cm)
Die Wellenfunktion $y (x, t) = y_0 sin(omega t -k x + phi_0)$ beschreibt die Welle im Raum und Zeit.





#pagebreak()
== Bestimmung der fehlenden Größen
#v(0.2cm)
*Aufgabe 1:* Schallwelle mit $f = 440$ Hz, $c = 343$ m/s

$
       T & = 1/f = 1/(440 "Hz") approx 2.27 dot 10^(-3) "s" \
  lambda & = c/f = (343 m/s)/(440 "Hz") approx 0.780 "m"
$
#v(0.5cm)
*Aufgabe 2:* Lichtwelle mit $lambda = 532$ nm, $c_0 = 299792458 m/s$

$
  T & = lambda/c_0 = (532 dot 10^(-9) "m")/(299792458 m/s) approx 1.77 dot 10^(-15) "s" \
  f & = c_0/lambda = (299792458 m/s)/(532 dot 10^(-9) "m") approx 5.64 dot 10^(14) "Hz"
$
#v(0.5cm)

*Aufgabe 3:* Schallwelle mit $f = 3430$ Hz, $c = 343 m/s$, $t = 0.02$ s

#grid(
  columns: (auto, 1fr),
  align: left + horizon,
  [
    $
      lambda & = c/f = (343 m/s)/(3430 "Hz") = 0.1 "m" = 10 "cm" \
           k & = (2pi)/lambda = (2pi)/(0.1 "m") = 20pi " m"^(-1) \
       omega & = 2pi f = 6860pi " s"^(-1) \
           x & = 0 "cm" \
       phi_0 & = 0
    $
  ],
  [
    $
      alpha (x) & = omega t - k x + phi_0 \
                & = 6860 pi s^(-1) dot 0.02s - 20pi "m"^(-1) dot 0 "cm" + 0 \
                & = 137.2 pi
    $
    $ 137.2 pi mod 2 pi = 1.2pi = 216° $
  ],
)

#v(0.5cm)
Bei x = 0 cm ist der Winkel bei $alpha = 216°$. Da die Wellenlänge 10cm ist, nimmt die Phase pro cm 36° ab (72° für zwei cm). Somit lassen sich die Pfeile mit einer for-Schleife darstellen:

#align(center)[
  #canvas({
    import draw: *
    let r = 0.75
    let spacing = 2.5
    let xs = (0, 2, 4, 6, 8, 10)
    let alphas = (216, 144, 72, 0, -72, -144)

    for i in range(xs.len()) {
      let cx = i * spacing
      let x-cm = xs.at(i)
      let alpha-deg = alphas.at(i)
      let alpha-rad = alpha-deg * calc.pi / 180

      circle((cx, 0), radius: r, stroke: gray + 0.5pt, fill: none)
      line((cx - r - 0.2, 0), (cx + r + 0.2, 0), stroke: gray + 0.4pt)
      line((cx, -r - 0.2), (cx, r + 0.2), stroke: gray + 0.4pt)
      line(
        (cx, 0),
        (cx + r * calc.cos(alpha-rad), r * calc.sin(alpha-rad)),
        mark: (end: ">"),
        stroke: blue + 1.5pt,
      )
      content((cx, -r - 0.5), [$x = #x-cm "cm"$])
      content((cx, -r - 0.9), [$alpha = #alpha-deg°$])
    }
  })
]


#pagebreak()
= Welleneigenschaften
#v(0.3cm)

== 1. Huygenssches Prinzip
#v(0.2cm)

- Jeder Punkt auf der Oberfläche eines Wellenerregers ist die Quelle einer Kugel-Kreiswelle.
- Ebene Wellen entstehen durch die Überlagerung sehr vieler Kugelwellen.

#v(0.3cm)
#align(center)[
  #image("images/Screenshot 2026-05-19 at 09.52.06.png", width: 75%)
]

#v(0.5cm)
*Das Prinzip gilt auch an Hindernissen:*

#v(0.3cm)
#align(center)[
  #image("images/Screenshot 2026-05-19 at 09.51.39.png", width: 75%)
]


#pagebreak()
== 2. Brechung
#v(0.2cm)

- Ändert sich die Ausbreitungsgeschwindigkeit einer Welle $->$ ein Übergang von einem Medium in ein anderes, so nennt man dies Brechung.

#v(0.3cm)
#align(center)[
  #image("images/Screenshot 2026-05-19 at 09.51.21.png", width: 65%)
]

#v(0.5cm)
#grid(
  columns: (1fr, 1fr),
  align: center + horizon,
  gutter: 2em,
  $
    s_1 & = d dot sin(alpha_1) \
    s_2 & = d dot sin(alpha_2)
  $,
  $
    s_1 & = t dot v_1 \
    s_2 & = t dot v_2
  $,
)

#v(0.5cm)
z.B. für Licht: $v_c = 1/n dot c_0$

- $1/n$: Brechungsindex im Medium
- $c_0$: Lichtgeschwindigkeit im Vakuum

#v(0.5cm)
*Einsetzen:*
$
  t dot v_1 & = d dot sin(alpha_1) \
  t dot v_2 & = d dot sin(alpha_2)
$

$
  t dot c_0/n_1 & = d dot sin(alpha_1) quad #[I] \
  t dot c_0/n_2 & = d dot sin(alpha_2) quad #[II]
$

#v(0.3cm)
I:II
$ n_1/n_2 = sin(alpha_1)/sin(alpha_2) quad : "Snelliussches Brechungsprinzip" $


#pagebreak()
== 3. Interferenz
Treffen zwei Wellen $a (x, t)$ und $b (x,t)$ zum Zeitpunkt $t_1$ an Stelle $x_1$ aufeinander, so gilt für die Auslenkung.\
$ y_("ges") (x_1 , t_1) & = a (x_1, t_1) + b (x_1, t_1) $\
$t_1$:

#v(0.5cm)
#align(center)[
  #canvas({
    plot.plot(
      size: (11, 4),
      axis-style: "school-book",
      x-label: $x$,
      y-label: $y$,
      x-tick-step: none,
      y-tick-step: none,
      x-min: 0,
      x-max: 15,
      y-min: -4,
      y-max: 4,
      {
        plot.add(
          domain: (0, 15),
          samples: 200,
          style: (stroke: orange + 1.2pt),
          label: $a(x, t_1)$,
          t => 2.5 * calc.sin(calc.pi / 3 * t),
        )
        plot.add(
          domain: (0, 15),
          samples: 200,
          style: (stroke: red + 1.2pt),
          label: $b(x, t_1)$,
          t => 2.5 * calc.cos(calc.pi / 3 * t),
        )
        plot.add(
          domain: (0, 15),
          samples: 200,
          style: (stroke: yellow + 1.5pt),
          label: $y_("ges")(x, t_1)$,
          t => 2.5 * calc.sin(calc.pi / 3 * t) + 2.5 * calc.cos(calc.pi / 3 * t),
        )
      },
    )
  })
]

Haben zwei Wellen die gleiche Frequenz (Wellenlänge), so kann sich bei gleicher Ausbreitungsrichtung Folgendes ergeben:\
$
    a & tilde a_0 sin(omega t) \
  b_1 & tilde b_(1,0) sin (omega t + 2 pi dot n); quad n in ZZ \
  b_1 & tilde b_(2,0) sin (omega t + (1 + 2n) pi); quad n in ZZ
$
*Maximale konstruktive Interferenz*\
$=> y(x,t) = a(x,t) + b_1 (x,t) = 2a (x,t)$

#v(0.2cm)
*Maximale destruktive Interferenz*\
bzw. $y_2(x,t) = a(x,t) + b_2(x,t) = 0$\

#v(1cm)
== 4. Reflexion
Trifft eine Welle auf dem Übergang zweier Medien (siehe auch Brechung), so wird zumindest ein Teil der Welle zurück in das Ursprungsmedium reflektiert. Dabei gilt:\
Bei einem festen Ende hat die reflektierte Welle einen Phasensprung von 180˚ bezogen auf die einlaufende Welle.\
Bei 1. Mit der exakten Binomialverteilung rechneneinm losen Ende beträgt der Phasensprung 0˚

#pagebreak()
== 5. Stehende Wellen
Treffen zwei Wellen mit gleicher Wellenlänge $lambda$ und gleicher Amplitude $y_0$ aus entgegengesetzten Richtungen aufeinander, so entsteht eine stehende Welle:


#v(0.6cm)

#align(center)[
  #canvas(length: 0.8cm, {
    import draw: *

    let k = calc.pi / 3
    let phi = calc.pi / 4
    let xmin = 0
    let xmax = 15
    let samples = 300

    // Funktion abtasten -> Liste von Punkten
    let sample(f) = {
      let pts = ()
      for i in range(samples + 1) {
        let x = xmin + (xmax - xmin) * i / samples
        pts.push((x, f(x)))
      }
      pts
    }

    // Mittellinie zwischen Sendern (statt Achse)
    line((xmin, 0), (xmax, 0), stroke: 0.7pt)

    // Wellen
    let a-pts = sample(x => 1.5 * calc.sin(k * x - phi))
    let b-pts = sample(x => 1.5 * calc.sin(k * x + phi))
    let sum-pts = sample(x => 3 * calc.cos(phi) * calc.sin(k * x))

    line(..a-pts, stroke: green + 1.2pt)
    line(..b-pts, stroke: orange + 1.2pt)
    line(..sum-pts, stroke: purple + 1.8pt)

    // Knotenlinien (sin(k x) = 0  =>  x = 3, 6, 9, 12)
    for kx in (3, 6, 9, 12) {
      line((kx, -3.4), (kx, 3.4), stroke: 0.6pt)
    }

    // Bäuche-Beschriftung mit Pfeilen
    content((7.5, 4.3), [Bäuche])
    line((6.0, 3.8), (4.7, 2.3), mark: (end: ">"), stroke: 0.5pt)
    line((7.5, 3.8), (7.5, 2.5), mark: (end: ">"), stroke: 0.5pt)
    line((9.0, 3.8), (10.3, 2.3), mark: (end: ">"), stroke: 0.5pt)

    // Knoten-Beschriftung mit Pfeilen
    content((7.5, -4.3), [Knoten])
    line((7.0, -3.8), (6.0, -2.5), mark: (end: ">"), stroke: 0.5pt)
    line((7.75, -3.8), (9.0, -2.5), mark: (end: ">"), stroke: 0.5pt)
    line((8.5, -3.8), (12.0, -2.5), mark: (end: ">"), stroke: 0.5pt)

    // Sender links als Klammer ] (gespiegelt, öffnet nach außen)
    line((-0.3, -0.8), (-0.7, -0.8), stroke: 0.9pt)
    line((-0.3, -0.8), (-0.3, 0.8), stroke: 0.9pt)
    line((-0.3, 0.8), (-0.7, 0.8), stroke: 0.9pt)
    // Beschriftung links neben Sender, vertikale Mitte
    content((-1.4, 0), [Sender])
    // Pfeil orange ÜBER dem Sender (linkslaufende Welle)
    line((-0.3, 1.1), (-1.4, 1.1), mark: (end: ">"), stroke: orange + 1pt)

    // Sender rechts als Klammer [ (gespiegelt, öffnet nach außen)
    line((15.7, -0.8), (15.3, -0.8), stroke: 0.9pt)
    line((15.3, -0.8), (15.3, 0.8), stroke: 0.9pt)
    line((15.3, 0.8), (15.7, 0.8), stroke: 0.9pt)
    // Beschriftung links neben rechtem Sender, vertikale Mitte
    content((16.3, 0), [Sender])
    // Pfeil grün UNTER dem Sender (rechtslaufende Welle)
    line((15.3, -1.1), (16.4, -1.1), mark: (end: ">"), stroke: green + 1pt)
  })
]


Die Knoten sind ortsfest. Die Auslenkung der Bäuche variiert periodisch; sie schwingen auf und ab.\
Stehende Wellen entstehen auch bei Reflexionen.  Bei Reflexion  am #underline[offenen]  Ende liegt am reflektierenden Übergang zu einem anderen Medium ein #underline[Bauch] und #underline[sonst] ein #underline[Knoten] vor.

#pagebreak()

= 6. Polarisation und Schwingungsrichtung
#v(1em)

#grid(
  columns: (1fr, 3fr),

  [
    *Tabelle:*

    #table(
      columns: (auto, auto),
      align: center,
      [-100], [0.041],
      [-90], [0.132],
      [-80], [0.255],
      [-70], [0.470],
      [-60], [0.778],
      [-50], [1.160],
      [-40], [1.450],
      [-30], [1.628],
      [-20], [1.820],
      [-10], [1.907],
      [0], [1.871],
      [10], [1.761],
      [20], [1.560],
      [30], [1.320],
      [40], [1.072],
      [50], [0.831],
      [60], [0.425],
      [70], [0.148],
      [80], [0.058],
      [90], [0.024],
      [100], [0.040],
    )],

  [
    *Graph:*
    #image("images/Graph Polarisation.png", width: 80%)

    #v(0.5cm)
    *Formeln:*
  ],
)


#v(1cm)
Wellen können sich abhängig vom Medium transversal und longitudinal schwingend ausbreiten.\

== transversal:
#v(1em)

#align(center)[
  #canvas(length: 1cm, {
    import draw: *

    let A = 1.8
    let k = 2 * calc.pi / 7.0
    let xmax = 14

    // --- Wellenkurve (schwarz) als Punktzug ---
    let pts = ()
    for i in range(0, 141) {
      let x = i * 0.1
      pts.push((x, A * calc.sin(k * x)))
    }

    // Nulllinie (Ausbreitungsrichtung)
    line((-0.4, 0), (xmax + 0.6, 0), mark: (end: ">"), stroke: 0.8pt)

    // Welle
    line(..pts, stroke: black + 2.5pt)

    // --- orange Punkte + Schwingungspfeile (orthogonal) ---
    let orange = rgb("#E8821E")
    for j in range(0, 16) {
      let x = 0.4 + j * 0.9
      let y = A * calc.sin(k * x)
      // Punkt auf der Welle
      circle((x, y), radius: 0.07, fill: orange, stroke: none)
      // Pfeil von der Achse zur Auslenkung (Schwingungsrichtung)
      if calc.abs(y) > 0.2 {
        line((x, 0), (x, y), mark: (end: ">"), stroke: orange + 1pt)
      }
    }

    // --- Annotation: Auslenkung (zeigt auf einen orangen Pfeil) ---
    content((4.2, 1.5), anchor: "south-west", text(fill: orange)[Auslenkung])
    line((4.1, 1.7), (2.35, 1.45), mark: (end: ">"), stroke: orange + 1pt)

    // --- Annotation: Schwingung orthogonal ---
    let zx = 3.5
    let zy = A * calc.sin(k * zx)
    line((1.8, -2.0), (zx - 0.1, zy + 0.1), mark: (end: ">"), stroke: orange + 1pt)
    content(
      (0.2, -2.4),
      anchor: "north-west",
      text(fill: orange)[Schwingung des Mediums \ ist orthogonal zur \ Ausbreitungsrichtung],
    )

    // --- Ausbreitungsrichtung (unten rechts, freier Bereich) ---
    line((9.8, -2.6), (13.5, -2.6), mark: (end: ">"), stroke: 0.8pt)
    content((11.6, -3.2), text(size: 10pt)[Ausbreitungsrichtung])
  })
]
#align(center)[hier: lineare Polarisation]


#v(0.6cm)

== Longitudinal
#align(center)[
  #canvas(length: 1cm, {
    import draw: *

    let A = 1.8
    let k = 2 * calc.pi / 9.0 // eine breite Wellenlaenge (Periode = 9)
    let xmax = 10 // etwas mehr als eine Periode (2 pi) zeigen
    let orange = rgb("#E8A33D")
    let darkOr = rgb("#E8821E")

    // --- Auslenkungskurve s(x) (orange) ---
    let pts = ()
    for i in range(0, 101) {
      let x = i * 0.1
      pts.push((x, A * calc.sin(k * x)))
    }
    line(..pts, stroke: orange + 3pt)

    // Achse (Ausbreitungsrichtung)
    line((-0.4, 0), (xmax + 0.6, 0), mark: (end: ">"), stroke: 0.8pt)

    // --- horizontale Auslenkungspfeile (parallel zur Ausbreitung) ---
    // Richtung kippt an den BÄUCHEN (Peaks) der Sinuskurve: dir = sign(cos(k x))
    // (cos = 0 genau an den Peaks von sin). Laenge ∝ |sin(k x)| -> am laengsten
    // an den Peaks, am kuerzesten an den Nulldurchgaengen. Sample-Punkte um
    // halbe Schrittweite versetzt, damit kein Pfeil exakt auf einem Peak sitzt.
    let step = 9.0 / 12
    let n = calc.floor(xmax / step)
    for j in range(1, n + 1) {
      let x = (j - 0.5) * step
      // Punkt auf der Achse (Gleichgewichtslage)
      circle((x, 0), radius: 0.07, fill: darkOr, stroke: none)
      let dir = if calc.cos(k * x) >= 0 { 1 } else { -1 }
      let len = 0.7 * calc.abs(calc.sin(k * x)) // lang an Peaks, kurz an Null
      if len > 0.08 {
        line((x, 0.35), (x + dir * len, 0.35), mark: (end: ">"), stroke: darkOr + 1.4pt)
      }
    }

    // --- Ausbreitungsrichtung (oben rechts) ---
    line((6.8, 1.6), (10.3, 1.6), mark: (end: ">"), stroke: 0.8pt)
    content((8.5, 2), text(size: 10pt)[Ausbreitungsrichtung])
  })
]

#v(0.1cm)
#align(center)[#text(fill: rgb("#E8A33D"), weight: "bold")[Schwingung des Mediums parallel zur Ausbreitungsrichtung]]

#v(1cm)
Nur transversale Wellen können polarisiert werden:
Wird eine schwingungsrichtung der Welle bevorzugt, so spricht man von einer polarisierten Welle:
#v(0.6cm)

#grid(
  columns: (1fr, 1fr),
  align: center,
  gutter: 1.5em,
  [
    #canvas(length: 0.7cm, {
      import draw: *
      let darkOr = rgb("#E8821E")
      // Achsen: z waagerecht, y senkrecht
      line((-3, 0), (3.0, 0), mark: (end: ">"), stroke: 0.9pt)
      content((3.3, -0.35), $z$)
      line((0, -3), (0, 3), mark: (end: ">"), stroke: 0.9pt)
      content((0.35, 3.25), $y$)
      // vertikaler Doppelpfeil (lineare Polarisation)
      line((-1.3, -2.3), (-1.3, 2.3), mark: (start: ">", end: ">"), stroke: darkOr + 1.6pt)
    })

    #v(0.1cm)
    _lineare Polarisation der Welle von oben_
  ],
  [
    #canvas(length: 0.7cm, {
      import draw: *
      let darkOr = rgb("#E8821E")
      // Achsen: z waagerecht, y senkrecht
      line((-3, 0), (3.0, 0), mark: (end: ">"), stroke: 0.9pt)
      content((3.3, -0.35), $z$)
      line((0, -3), (0, 3), mark: (end: ">"), stroke: 0.9pt)
      content((0.35, 3.25), $y$)
      // rotierender Zeiger (zirkulare Polarisation): Vektor + gebogener Pfeil
      line((0, 0), (-1.3, 2.0), stroke: darkOr + 1.6pt)
      bezier((-1.4, 2.0), (-2.35, 1.05), (-1.95, 1.95), mark: (end: ">"), stroke: darkOr + 1.6pt)
    })

    #v(0.1cm)
    _zirkulare Polarisation_
  ],
)

#v(0.5cm)
Wie viel linear polarisiertes Licht wird durch einen Polfilter transmittiert?

#v(0.2cm)

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    let purple = rgb("#9B30B5")
    let orange = rgb("#E8821E")

    // Eckpunkte: Ursprung O, Spitze P (45°)
    let P = (3, 3)

    // gestrichelte Ergaenzung des Rechtecks (links + oben)
    line((0, 0), (0, 3), stroke: (paint: purple, thickness: 1.4pt, dash: "dashed"))
    line((0, 3), (3, 3), stroke: (paint: purple, thickness: 1.4pt, dash: "dashed"))

    // durchgezogene Komponenten
    line((0, 0), (1.5, 0), stroke: purple + 1.8pt) // senkrechter Anteil (horizontal, unten)
    line((1.5, 0), (1.5, 3), stroke: purple + 1.8pt) // paralleler Anteil (vertikal, rechts)

    // orange: linear polarisierte Welle (Diagonale)
    line((0, 0), P, stroke: orange + 2.2pt)

    // schwarze Filterachse (Polarisationsrichtung), vertikal
    line((1.5, -1.1), (1.5, 4), mark: (end: ">"), stroke: 0.9pt)

    // --- Beschriftungen ---
    content((1.9, 4.2), anchor: "west", text(size: 11pt)[Polarisationsrichtung des Filters])

    content((3.5, 2.5), anchor: "west", text(fill: orange)[linear polarisierte Welle \ von vorne betrachtet])

    // paralleler Anteil: Pfeil zeigt auf die rechte vertikale Strecke
    line((2.7, 0.75), (1.6, 0.75), mark: (end: ">"), stroke: purple + 1.4pt)
    content((3, 0.75), anchor: "west", text(fill: purple)[paralleler Anteil $y_(parallel)$])

    // senkrechter Anteil: Pfeil von unten auf die untere horizontale Strecke
    line((1., -1.2), (1., -0.15), mark: (end: ">"), stroke: purple + 1.4pt)
    content((1.5, -1.5), anchor: "north", text(fill: purple)[senkrechter Anteil $y_perp$])
  })
]

#v(0.5cm)
$ y_parallel & = y dot cos alpha $
=> Wenn $alpha = 0 degree$ oder $180degree$ ist, so wird $|y_perp | = | y dot cos alpha | = | y|$, wenn $alpha = 90 degree$ oder $270 degree$ ist, so wird $| y_parallel| = |y dot cos alpha | = 0$.



#pagebreak()
= Stehende Wellen mit Ultraschall
== Aufbau
*1.*
#align(center)[
  #canvas(length: 0.8cm, {
    import draw: *

    // ============== Ultraschallsender (links) ==============
    // Klammer ] (öffnet nach links)
    line((1.5, 0.6), (1.0, 0.6), stroke: 1pt)
    line((1.5, 0.6), (1.5, -0.6), stroke: 1pt)
    line((1.5, -0.6), (1.0, -0.6), stroke: 1pt)
    content((1.2, -1.4), [Ultraschallsender])

    // ============== Ultraschallempfänger (Mitte) ==============
    // Kreis
    circle((7, 0), radius: 0.55, stroke: 1pt)
    // Pfeil nach links
    line((6.2, 0), (5.2, 0), mark: (end: ">"), stroke: 1pt)
    // Pfeil nach rechts
    line((7.8, 0), (8.8, 0), mark: (end: ">"), stroke: 1pt)
    content((7, -1.4), [Ultraschallempfänger])

    // ============== Spiegel (rechts) ==============
    line((13.5, -1.0), (13.5, 1.0), stroke: 1.4pt)
    content(
      (13.8, 0.6),
      anchor: "north-west",
      [Spiegel \ (glatte, harte \ Oberfläche)],
    )
  })
]
#v(1em)

*2.* So wie 1., aber mit einem 2. Sender statt des Spiegels.

== Durchführung:
Der Empfänger wird entlang des Schallwegs verschoben. Auf einem Oszilloskop wird die Amplitude des Ultraschallsignals beobachtet.

== Beobachtung:
Abhängig von der Position des Empfängers verändert sich die Amplitude.\
*Messung:* Die Positionen der Amplitudenminima (= Knoten der stehenden Welle) werden gemessen.

== Auswertung:
#align(center)[
  #canvas(length: 0.9cm, {
    import draw: *

    // Achsen mit Pfeilspitzen
    line((0, 0), (7, 0), mark: (end: ">"), stroke: 1.2pt) // x-Achse
    line((0, 0), (0, 5), mark: (end: ">"), stroke: 1.2pt) // y-Achse

    // Ursprungsgerade
    line((0, 0), (6, 4.5), stroke: 1.3pt)

    // Achsenbeschriftungen
    content((1, 5.0), anchor: "south-east", [$s$ (Position)])
    content((10.0, -0.4), anchor: "north-east", [$u$ (Amplitudennummer)])
  })
]


*Steigung:* Abstand zweier benachbarter Minima \

*Ergebnis:* $ Delta s approx 0.787 "cm" \
=> lambda = 2 dot Delta s = 1.573 "cm" $
Frequenz des Schalls:
$f = 24000 "Hz"$
$
  => c_"Schall" & = lambda dot f \
                & = 0.01573 "m" dot 24000 1/s \
                & = 377.6 m/s \
$
Literaturwert:
$c_"Schall" &= 343 m/s$  (IQB-Tabelle)\
Im Ramen der Messungenauigkeit passen dei Werte zueinander. (rel. Fehler: 10%)


#pagebreak()
= Das Michelsoninterferometer

#image("images/Michelsoninterferometer.png", width: 80%)

1. Halbdurchlässiger Spiegel
2. Verschiebbarer Spiegel
3. Fester Spiegel
4. Schirm/ Detektor

#v(0.2cm)
Die beiden Lichtwege x.2 und x.3 sind typischerweise nicht gleichlang. Bei Verschiebung von Spiegel 2 wird der relative Gangunterschied zwischen den beiden Strecken variiert.
#v(0.5cm)

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    let A = 2.0
    let k = 2 * calc.pi / 9.0
    let xmax = 13
    let orange = rgb("#E8821E")
    let lila = rgb("#B23BC4")
    let grau = rgb("#8A8A8A")

    // Kurven sampeln
    let curve(f) = {
      let pts = ()
      for i in range(0, 131) {
        let x = i * 0.1
        pts.push((x, f(x)))
      }
      pts
    }

    // 4.3 orange:        sin(k x)
    // 4.2 Bsp.2 lila:    -cos(k x) = sin(k x - pi/2)
    // 4.2 Bsp.1 grau:    -sin(k x)
    line(..curve(x => A * calc.sin(k * x)), stroke: orange + 1.6pt)
    line(..curve(x => -A * calc.cos(k * x)), stroke: lila + 1.6pt)
    line(..curve(x => -A * calc.sin(k * x)), stroke: grau + 1.6pt)

    // Achsen
    line((-1, 0), (xmax + 0.6, 0), mark: (end: ">"), stroke: 0.9pt)
    content((xmax + 0.7, -0.35), $x$)
    line((0, -2.6), (0, 2.6), stroke: 0.9pt)

    // Beschriftungen rechts
    content((xmax + 0.5, 0.7), text(fill: orange)[4.3])
    content((xmax + 0.5, 1.8), text(fill: lila)[4.2 \ Bsp. 2])
    content((xmax + 0.5, -1.0), text(fill: grau)[4.2 \ Bsp. 1])
  })
]

#v(0.2cm)
In Bsp. 2 ist Spiegel 2 bezogen auf die Stellung in Bsp. 1 um $1/8 lambda$ in Richtung positiver y-Achse (s. Abb.) verschoben.\

$=>$ Bei passenden Stellungen von Spiegel 2 können durch Verschiebungen um jeweils $lambda/2$ aufeinanderfolgende Interferenzmaxima und -minima erzeugt werden.\
$=>$ So können Längenänderungen durch Zählung von Maxima und Minima gemessen werden:
$
  Delta l & = n dot lambda/2 quad "n: Anzahl Maxima ODER Minima"
$

#pagebreak()


= Der Doppelspalt

== Einzelspalt:

#v(0.4cm)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    let blau = rgb("#3B78C4")

    // Ebene Wellen (vertikale Wellenfronten links)
    for x in (-3.5, -2.5, -1.5, -0.5) {
      line((x, -2.2), (x, 2.2), stroke: blau + 1.6pt)
    }
    // Pfeil "Ebene Wellen"
    line((-3.0, -3.2), (-1, -3.2), mark: (end: ">"), stroke: blau + 1.4pt)
    content((-2, -3.6), text(fill: blau)[Ebene  Wellen])

    // Wand mit Spalt (Luecke um y=0)
    line((0, -3.0), (0, -0.4), stroke: black + 2pt)
    line((0, 0.4), (0, 3.0), stroke: black + 2pt)
    content((0, 3.4), text(size: 11pt)[Spalt])

    // Kreiswellen (Halbkreise rechts, Zentrum = Spalt)
    let r = 0.6
    for i in range(4) {
      arc((0, -r), start: -90deg, stop: 90deg, radius: r, stroke: blau + 2pt)
      r = r + 0.8
    }

    // Beschriftung rechts
    content((4.4, 2.4), anchor: "west", text(size: 11pt)[Kreiswellen nach \ dem Huygensschen \ Prinzip])
  })
]

#v(0.3cm)

== Doppelspalt:

#v(0.4cm)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    let blau = rgb("#3B78C4")

    // Ebene Wellen (vertikale Wellenfronten links)
    for x in (-2.5, -1.5, -0.5) {
      line((x, -3.5), (x, 3.5), stroke: blau + 1.8pt)
    }
    // Pfeil (Ausbreitungsrichtung)
    line((-2.5, 4.0), (-0.5, 4.0), mark: (end: ">"), stroke: blau + 1.6pt)
    content((-3.8, 0), anchor: "east", text(fill: blau)[Ebene \ Welle])

    // Wand mit ZWEI Spalten (Luecken bei y ~ +0.9 und y ~ -0.9)
    line((0, 4), (0, 1.1), stroke: black + 2.2pt) // oberes Stueck
    line((0, 0.7), (0, -0.7), stroke: black + 2.2pt) // Mittelsteg
    line((0, -1.1), (0, -4), stroke: black + 2.2pt) // unteres Stueck
    content((0, -4.4), text(size: 11pt)[Doppelspalt])

    // Kreiswellen aus BEIDEN Spalten (Halbkreise rechts)
    content((1.5, 4.4), text(fill: blau)[Kreiswellen])
    let e = 0.5
    for cy in (0.9, -0.9) {
      for r in (0.5, 1.1, 1.7, 2.3, 4) {
        arc((0, -e + cy), start: -90deg, stop: 90deg, radius: e, stroke: blau + 1.8pt)
        e += 0.6
      }
      e = 0.5
    }

    line((3, 4), (3, -4), stroke: black + 2.2pt) // Schirm
    content((3, -4.4), text(size: 11pt)[Schirm])

    // Beschriftungen rechts vom Schirm (Maxima / Interferenztyp)
    let orange = rgb("#E8821E")
    let bl = (y, t) => content((3.2, y), anchor: "west", text(size: 10pt)[#t])
    let og = (y, t) => content((3.3, y), anchor: "west", text(fill: orange, size: 10pt)[#t])
    bl(1.15, [Maximum 1. Ordnung])
    og(0.75, [konstruktive])
    og(0.35, [destruktive])
    bl(0, [Maximum 0. Ordnung])
    og(-0.35, [konstruktive])
    og(-0.75, [destruktive])
    bl(-1.15, [Maximum 1. Ordnung])
    og(-1.55, [konstruktive Interferenz])

    // Maxima-Linien durch die SCHNITTPUNKTE der Kreiswellen, grau.
    // 0. Ordnung: Schnittpunkte liegen auf y = 0 (gerade).
    // 1. Ordnung: Schnittpunkte (oberer Bogen r, unterer r+0.6) berechnet:
    //   (1.01, 0.47), (1.68, 0.67), (2.30, 0.87) -> Polylinie hindurch.
    let grau = rgb("#9A9A9A")
    line((0.45, 0.2), (1.01, 0.47), (1.68, 0.67), (2.30, 0.87), (3, 1.08), stroke: grau + 1.4pt)
    line((0, 0), (3, 0), stroke: grau + 1.4pt)
    line((0.45, -0.2), (1.01, -0.47), (1.68, -0.67), (2.30, -0.87), (3, -1.08), stroke: grau + 1.4pt)
  })
]

Liegt an einem Punkt P im Raum ein Gangunterschied von $n dot lambda$ vor, so ergibt sich im P konstruktive Interferenz. Der Gangunterschied ist die Wegstreckendifferenz zweier Wellen. Hier ist es die Differenz zwischen der Welle des oberen und der Welle des unteren Spaltes.

Exakte Berechnung der Maxima auf dem Schirm:

#v(0.4cm)
#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    let blau = rgb("#3B78C4")
    let gelb = rgb("#F2C744")
    let orange = rgb("#E8821E")
    let grau = rgb("#9A9A9A")

    let dh = 0.9 // d/2 (Spaltmitten bei +-0.9)
    let X = 6 // Schirm-Position
    let a = 2.4 // Hoehe von P ueber der Mitte O

    // Wand mit ZWEI Spalten (Luecken bei y ~ +0.9 und y ~ -0.9)
    line((0, 4), (0, 1.1), stroke: black + 2.2pt) // oberes Stueck
    line((0, 0.7), (0, -0.7), stroke: black + 2.2pt) // Mittelsteg
    line((0, -1.1), (0, -4), stroke: black + 2.2pt) // unteres Stueck
    content((0, -4.4), text(size: 11pt)[Doppelspalt])

    line((X, 4), (X, -4), stroke: black + 2.2pt) // Schirm
    content((X, -4.4), text(size: 11pt)[Schirm])

    // Orange Referenzlinien (waagerecht von jedem Spalt zum Schirm)
    line((0, dh), (X, dh), stroke: orange + 1.6pt)
    line((0, -dh), (X, -dh), stroke: orange + 1.6pt)
    // Graue Mittellinie (Spaltmitte -> O)
    line((0, 0), (X, 0), stroke: grau + 1.6pt)

    // Wege l_1 (oberer Spalt -> P) und l_2 (unterer Spalt -> P)
    line((0, dh), (X, a), stroke: gelb + 1.8pt)
    line((0, -dh), (X, a), stroke: gelb + 1.8pt)
    content((2.1, 1.85), text(fill: gelb)[$l_1$])
    content((2., 0.55), text(fill: gelb)[$l_2$])

    // Punkt P (auf dem Schirm) und Mitte O (0. Ordnung)
    circle((X, a), radius: 0.09, fill: black, stroke: none)
    content((X - 0.3, 0.3), text(size: 11pt)[0])

    // Rechte-Winkel-Marken (Viertelkreis + Punkt) wo orange Linien senkrecht
    // auf den Schirm treffen.
    arc((X, dh), start: 180deg, stop: 270deg, radius: 0.32, anchor: "origin", stroke: black + 1pt)
    circle((X - 0.13, dh - 0.13), radius: 0.045, fill: black, stroke: none)
    arc((X, -dh), start: 90deg, stop: 180deg, radius: 0.32, anchor: "origin", stroke: black + 1pt)
    circle((X - 0.13, -dh + 0.13), radius: 0.045, fill: black, stroke: none)

    // Masszahlen (Klammer-Strich mit Ticks)
    let dim(x, y1, y2, lbl, lx) = {
      line((x, y1), (x, y2), stroke: black + 1pt)
      line((x - 0.12, y1), (x + 0.12, y1), stroke: black + 1pt)
      line((x - 0.12, y2), (x + 0.12, y2), stroke: black + 1pt)
      content((lx, (y1 + y2) / 2), text(size: 10pt)[#lbl])
    }
    dim(-0.5, dh, -dh, [$d$], -0.95) // d links
    dim(6.45, a, dh, [$a - d/2$], 7.0) // rechts vom Schirm
    dim(6.45, dh, 0, [$d/2$], 7.0)
    dim(6.45, 0, -dh, [$d/2$], 7.0)
    dim(8.1, a, -dh, [$a + d/2$], 8.6)

    // Abstand Doppelspalt <-> Schirm (Doppelpfeil unten)
    line((0, -3.2), (X, -3.2), mark: (start: ">", end: ">"), stroke: black + 1pt)
  })
]

#v(1em)
$
       Delta l & =^! n dot lambda quad "für konstruktive Interferenz" \
       Delta l & = l_2 - l_1 \
  n dot lambda & = | Delta lambda | \
               & = stretch(|, size: #250%) sqrt(e^2 + (a_n - d/2)^2) - sqrt(e^2 + (a_n + d/2)^2) stretch(|, size: #250%) \
               & = sqrt(3.36^2 + (0.011 - (0.0005 )/2)^2) - sqrt(3.36^2 + (0.011 + (0.0005 )/2)^2) \
               & = 1.64 dot 10^(-6) m \
$


$
             (Delta l)/n & = lambda \
  (1.64 dot 10^(-6) m)/3 & = 5.47 dot 10^(-7)m
$

#grid(
  columns: (1fr, 1fr),
  align: center,
  [*rot:*
    $
              e & = 3.36m \
              d & = 0.0005 m \
              n & = 3 \
              a & = 0.011 m \
      => lambda & = 5.456 dot 10^(-7) m \
                & = 545.6 "nm"
    $],
  [*grün*
    $
            a_4 & = 0.0235m \
              d & = 0.0005m \
              n & = 4 \
              e & = 3.36m \
      => lambda & = 437.1 dot 10^(-7)
    $],
)

#v(1cm)


#pagebreak()
== Näherung:
Spaltabstand $<<$ Abstand Spalt-Schirm\
=> "Lichtstrahlen" am Schirm sind ungefähr parallel


#align(center)[#image("images/parallel.png", width: 70%)]



$
              tan alpha & = a/e quad => quad alpha = arctan a/e \
              sin alpha & = (Delta l)/d quad Delta l: "Gangunterschied" \
  "Maxima für " Delta l & = n dot lambda quad "mit" n in ZZ \
$
$
  n dot lambda & = Delta l \
       Delta l & = d dot sin alpha \
               & underline(= d dot sin ( arctan a/e)) =^! n dot lambda
$

#align(center)[gilt für e $>>$ d]

#v(1em)
=== Probe mit den Werten von oben:

$
  lambda & = d/n dot sin (arctan a/e ) \
$


#v(1em)
#grid(
  columns: (1fr, 1fr),
  [*rot*
    $
      & = (0.0005m)/3 sin (arctan (0.011m)/(3.36m) \
      & = 545.6 "nm"
    $
  ],
  [*grün*
    $
      lambda & = (0.0005m)/4 sin (arctan (0.0235m)/(2-3.36m)) \
             & = 437.1 "nm"
    $],
)

#v(1em)
Eigentliche Wellenlängen der verwendeten Laser: $lambda_"rot" = 632.6 "nm" quad lambda_"grün" = 532 "nm"$

Vermutung: Spaltabstand ungenau?

$
  n lambda & = d sin (arctan a/e) \
         d & = (n lambda)/(sin (arctan a/e))
$

rot:
$
  d & = (3 dot 632.8 "nm")/(sin (arctan (0.011m)/(3.36m))) = 0.58 "mm"
$

grün:

$
  d & = 0.60 "mm"
$

$=>$ nahe an 0.5mm, kann schon sein, dass der Spaltabstand so ungenau ist.


#pagebreak()
= Vom Doppelspalt zum Gitter
Erhält man die Spaltanzahl, ohne den Spaltabstand zu verändern, so sorgen die zusätzlichen Spalten für zusätzliche Maxima zwischen den Hauptmaxima. Diese werden Nebenmaxima genannt.

#v(1em)
#image("images/Strahlengitter.png", width: 100%)


#pagebreak()
= Bestimmung der Wellenlängenbereiche von LEDs

#v(1em)
#image("images/Wellenlängenbereiche von LEDs.png", width: 100%)


=== Durchführung:
#block(inset: (left: 1em))[
  Verschiedene LEDs werden mit einem Gitterspektrometer (eigener Aufbau) analysiert.\
  Es werden jeweils Beginn und Ende der verschiedenen Wellenlängenbereichen festgehalten.
]


#v(1em)
=== Messwerte
#grid(
  columns: (2fr, 1fr, 1fr),
  [
    $e = 19$ cm\
    $g = (0.001 "m")/500 = 2 dot 10^(-6) "m"$\
  ],
  [
    *blau:*\
    $a_1 = 4.7$cm\
    $a_2 = 5.5$cm\
  ],
  [
    *weiß*\
    $a_1 = 4.7$cm\
    $a_2 = 7.9$cm\
  ],
)

#v(1em)



=== Auswertung
$
  lambda_"1-blau" & = g dot sin(arctan a_1/e) = 2 dot 10^(-6) "m" dot sin (arctan (0.047 "m")/(0.19 "m")) approx 4.80 dot 10^(-7) "m" = 480 "nm" \
  lambda_"2-blau" & = g dot sin(arctan a_2/e) = 2 dot 10^(-6) "m" dot sin (arctan (0.055 "m")/(0.19 "m")) approx 5.56 dot 10^(-7) "m" = 556 "nm" \
  lambda_"1-weiß" & = g dot sin(arctan a_1/e) = 2 dot 10^(-6) "m" dot sin (arctan (0.047 "m")/(0.19 "m")) approx 4.80 dot 10^(-7) "m" = 480 "nm" \
  lambda_"2-weiß" & = g dot sin(arctan a_2/e) = 2 dot 10^(-6) "m" dot sin (arctan (0.079 "m")/(0.19 "m")) approx 7.68 dot 10^(-7) "m" = 768 "nm"
$

#v(1em)
== Ergebnisse:

#align(center)[==== Wellenlängen $lambda$ (nm) - Mittelwerte

  #table(
    columns: (13%, 13%, 13%, 13%, 13%),
    [*Bereich*], [*1 links*], [*1 rechts*], [*2 links*], [*2 rechts*],
    [weiß], [443,67], [496], [528], [660,1],
    [rot], [606], [676], [/], [/],
    [grün], [481,0], [582], [/], [/],
    [blau], [445,0], [518], [/], [/],
    [UV], [392], [431], [/], [/],
  )]

#pagebreak()

= Subjektive Methode

== Aufbau ...


#v(1em)
== Ergebnisse:

#grid(
  columns: (2fr, 1fr, 1fr),
  [
    \
    $e = 32$ cm\
    $g = (0.001 "m")/500 = 2 dot 10^(-6) "m"$
  ],
  [
    *rot:*\
    $a_1 = 9.7$cm\
    $a_2 = 10.6$cm\
  ],
  [
    *weiß*\
    $a_1 = 6.8$cm\
    $a_2 = 10.6$cm\
  ],
)

#v(2em)
== Fehlerbetrachtung (kommt sicher im Abi dran):
=== Bsp.:
#image("images/Fehlerbetrachtung.png", width: 70%)



== Auswertung:

Alles gerechnet mit $lambda = d dot sin (arctan a/e)$ und $d = (0.001m)/500$ mit den Werten von oben.

#align(center)[
  #table(
    columns: (14%, 14%, 14%, 14%, auto),
    align: (center),
    [], [*$lambda$ (nm)*], [*$lambda_min$ (nm)*], [*$lambda_max$ (nm)*], [*$lambda$*],
    [*rot $a_1$*], [580], [563], [598], [$580^(+18)_(-17)$ nm],
    [*rot $a_2$*], [629], [612], [647], [$629^(+18)_(-17)$ nm],
    [*weiß $a_1$*], [416], [399], [433], [$(416 plus.minus 17)$ nm],
    [*weiß $a_2$*], [629], [612], [647], [$629^(+18)_(-17)$ nm],
  )

  *$500^(+7)_(-3)$*, wenn unterschiedliches rauskommt\
  *$(500 plus.minus 7)$*, wenn das Gleiche rauskommt
]
