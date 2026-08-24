#import "@preview/cetz:0.4.2": canvas, draw

#set page(width: 60em, height: auto, margin: 1.5cm)
#set text(size: 11pt)

= Feder-Masse-Pendel — Versuchsaufbau

// Helferfunktion: zeichnet eine vertikale Schraubenfeder als Zickzack
#let spring-shape(x, y-top, y-bottom, n: 14, amp: 0.25) = {
  import draw: line
  let total = y-top - y-bottom
  let step = total / n
  let prev = (x, y-top)
  for i in range(n + 1) {
    let y = y-top - (i + 0.5) * step
    let dx = if calc.rem(i, 2) == 0 { -amp } else { amp }
    let curr = (x + dx, y)
    line(prev, curr)
    prev = curr
  }
  line(prev, (x, y-bottom))
}

#align(center)[
  #canvas({
    import draw: *

    // === Decke ===
    rect((0, 6), (8, 6.5), fill: gray.lighten(50%), stroke: gray.darken(20%))
    content((4, 6.8), [Decke])

    // === Schraubenfeder ===
    spring-shape(5, 6, 3)
    content((6.7, 4.5), [Schraubenfeder $D$])

    // === Masse ===
    rect((4.4, 2), (5.6, 3), stroke: black, fill: white)
    content((6.7, 2.5), [Masse $(m)$])

    // === Lineal links ===
    rect((1, 2), (1.5, 6))
    // Skalenstriche
    let n-ticks = 20
    for i in range(n-ticks + 1) {
      let y = 2 + i * 4 / n-ticks
      let len = if calc.rem(i, 2) == 0 { 0.25 } else { 0.12 }
      line((1.5, y), (1.5 + len, y))
    }

    // === Ruhelage (gestrichelte Linie) ===
    line((1.75, 2.5), (4.4, 2.5), stroke: (paint: black, thickness: 0.6pt))
    content((3, 2.75), [Ruhelage])

    // === Amplituden-Pfeile ===
    line((4.0, 2.5), (4.0, 3.0), mark: (start: ">", end: ">"))
    content((3.75, 2.75), $A$)

    line((4.0, 2.0), (4.0, 2.5), mark: (start: ">", end: ">"))
    content((-0.3, 1.5), [Amplitude der Auslenkung $-A$])
  })
]

== Was du anpassen kannst

Die `spring-shape`-Funktion oben nimmt
$x$-Position, oberes und unteres $y$, sowie optional `n` (Anzahl
der Windungen) und `amp` (Breite der Spirale).
Damit kannst du die Feder gestaucht oder gedehnt darstellen,
indem du einfach $y_"oben"$ und $y_"unten"$ änderst.

Für andere Versuche (Pendel, schiefe Ebene, optische Bank)
nutzt du dieselbe Logik: `rect` für feste Körper,
`line` mit `mark` für Kraftpfeile, `content` für Beschriftungen,
und gegebenenfalls `circle` oder `arc` für gekrümmte Elemente.
