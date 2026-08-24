#import "@preview/zap:0.5.0"

#set page(width: auto, height: auto, margin: 1.5cm)
#set text(size: 11pt)

= RLC-Reihenschwingkreis

Das elektrische Analogon zum Feder-Masse-Schwinger:
die Spule $L$ entspricht der Masse $m$, der Kondensator $C$
der Federkonstanten (genauer: $1\/C$ entspricht $D$), und der
Widerstand $R$ entspricht der Dämpfung.

#align(center)[
  #zap.circuit({
    import zap: *
    set-style(variant: "ieee")

    // AC-Spannungsquelle links
    vsource("V1", (0, 0), (0, 3), v: $u(t)$)

    // obere Leitung mit Widerstand
    resistor("R1", (0, 3), (3, 3), i: $i(t)$, label: $R$)

    // rechte Seite: Spule, dann Kondensator nach unten
    inductor("L1", (3, 3), (3, 1.5), label: $L$)
    capacitor("C1", (3, 1.5), (3, 0), label: $C$)

    // untere Leitung schließt den Kreis
    wire("V1.in", "C1.out")
  })
]

Die Differentialgleichung lautet
$ L dot.double(q) + R dot(q) + 1/C q = u(t) $
und ist strukturgleich zu $m dot.double(y) + b dot(y) + D y = F(t)$.

#pagebreak()

= Minimalbeispiel

Falls oben etwas hakt — hier das absolut kleinste Beispiel
zum Testen, ob das Paket sauber installiert wird:

#align(center)[
  #zap.circuit({
    import zap: *
    set-style(variant: "ieee")
    resistor("r1", (0, 0), (4, 0), label: $R$, i: $i_1$)
  })
]

