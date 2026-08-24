#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/cetz-plot:0.1.3": plot

#set page(width: auto, height: auto, margin: 1.5cm)
#set text(size: 11pt)

= Schwingungsdiagramme im Schulbuch-Stil

== 1. Harmonische Schwingung

$
  y(t) = y_0 dot sin(omega t + phi),
  quad y_0 = 5, med omega = 1, med phi = pi/2
$

#align(center)[
  #canvas({
    plot.plot(
      size: (10, 5),
      axis-style: "school-book",
      x-label: $t$,
      y-label: $y$,
      x-tick-step: 1,
      y-tick-step: 2,
      x-min: 0,
      x-max: 10,
      y-min: -6,
      y-max: 6,
      {
        plot.add(
          domain: (0, 10),
          samples: 200,
          style: (stroke: blue + 1.2pt),
          t => 5 * calc.sin(t + calc.pi / 2),
        )
      },
    )
  })
]

#pagebreak()

== 2. Phasenverschiebung: Sinus und Kosinus

Sinus und Kosinus unterscheiden sich um $phi = pi/2$.

#align(center)[
  #canvas({
    plot.plot(
      size: (10, 5),
      axis-style: "school-book",
      x-label: $t$,
      y-label: $y$,
      x-tick-step: 1,
      y-tick-step: 0.5,
      x-min: 0,
      x-max: 7,
      y-min: -1.5,
      y-max: 1.5,
      legend: "inner-north-east",
      {
        plot.add(
          domain: (0, 7),
          samples: 200,
          style: (stroke: blue + 1.2pt),
          label: $sin(t)$,
          t => calc.sin(t),
        )
        plot.add(
          domain: (0, 7),
          samples: 200,
          style: (stroke: red + 1.2pt),
          label: $cos(t)$,
          t => calc.cos(t),
        )
      },
    )
  })
]

#pagebreak()

== 3. Gedämpfte Schwingung

Mit Reibung folgt die Auslenkung einer abklingenden Hüllkurve:
$
  y(t) = y_0 dot e^(-delta t) dot cos(omega t),
  quad delta = 0.2, med omega = 2
$

#align(center)[
  #canvas({
    plot.plot(
      size: (10, 5),
      axis-style: "school-book",
      x-label: $t$,
      y-label: $y$,
      x-tick-step: 2,
      y-tick-step: 2,
      x-min: 0,
      x-max: 15,
      y-min: -6,
      y-max: 6,
      {
        // gedämpfte Schwingung
        plot.add(
          domain: (0, 15),
          samples: 400,
          style: (stroke: blue + 1.2pt),
          t => 5 * calc.exp(-0.2 * t) * calc.cos(2 * t),
        )
        // obere Hüllkurve
        plot.add(
          domain: (0, 15),
          samples: 200,
          style: (stroke: (paint: red, thickness: 0.8pt, dash: "dashed")),
          t => 5 * calc.exp(-0.2 * t),
        )
        // untere Hüllkurve
        plot.add(
          domain: (0, 15),
          samples: 200,
          style: (stroke: (paint: red, thickness: 0.8pt, dash: "dashed")),
          t => -5 * calc.exp(-0.2 * t),
        )
      },
    )
  })
]

#pagebreak()

== 4. Schwebung (Überlagerung zweier Schwingungen)

Bei zwei nahe beieinanderliegenden Frequenzen entsteht eine Schwebung:
$
  y(t) = sin(omega_1 t) + sin(omega_2 t),
  quad omega_1 = 5, med omega_2 = 5.5
$

#align(center)[
  #canvas({
    plot.plot(
      size: (12, 5),
      axis-style: "school-book",
      x-label: $t$,
      y-label: $y$,
      x-tick-step: 5,
      y-tick-step: 1,
      x-min: 0,
      x-max: 30,
      y-min: -2.5,
      y-max: 2.5,
      {
        plot.add(
          domain: (0, 30),
          samples: 800,
          style: (stroke: blue + 1.2pt),
          t => calc.sin(5 * t) + calc.sin(5.5 * t),
        )
      },
    )
  })
]

#pagebreak()

== 5. Momentaufnahme einer Welle

Eine Welle als Funktion des Ortes $x$ zu einem festen Zeitpunkt:
$ y(x) = y_0 dot sin(k x), quad y_0 = 3, med k = 1 $

#align(center)[
  #canvas({
    plot.plot(
      size: (12, 5),
      axis-style: "school-book",
      x-label: $x$,
      y-label: $y$,
      x-tick-step: 2,
      y-tick-step: 1,
      x-min: 0,
      x-max: 14,
      y-min: -4,
      y-max: 4,
      {
        plot.add(
          domain: (0, 14),
          samples: 300,
          style: (stroke: blue + 1.2pt),
          x => 3 * calc.sin(x),
        )
      },
    )
  })
]
