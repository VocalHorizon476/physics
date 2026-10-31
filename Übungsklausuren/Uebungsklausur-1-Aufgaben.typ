#import "@preview/cetz:0.4.2": canvas, draw

#set text(lang: "de", size: 11pt)
#set page(paper: "a4", margin: (x: 2cm, y: 2cm), numbering: "1 / 1", header: [#text(size: 9pt, fill: gray)[Übungsklausur 1 (Vorabitur-Stil) #h(1fr) Physik eA #h(1fr) Aufgaben]])
#set par(justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => block(above: 1.2em, below: 0.6em)[#text(size: 14pt, weight: "bold")[#it.body]]
#show heading.where(level: 2): it => block(above: 1em, below: 0.4em)[#text(size: 12pt, weight: "bold")[#it.body]]

#let be(n) = h(1fr) + text(weight: "bold")[[#n BE]]
#let hinweis(body) = block(fill: luma(240), inset: 8pt, radius: 4pt, width: 100%)[#text(size: 10pt)[#body]]

#align(center)[
  #text(size: 18pt, weight: "bold")[Übungsklausur 1 -- Physik eA (Vorabitur-Stil)]\
  #v(0.3em)
  #text(size: 11pt)[Felder und Kondensator · Magnetfeld und Induktion · Schwingungen und Wellen · Quanten]\
  #v(0.3em)
  #text(size: 10pt, fill: gray)[Selbstlernmaterial, zusammengestellt am 30.10.2026 aus den Mappen (12.1, 12.2, 13.1), den Lehrer-Klausuren 1--3 und den Abiturformaten 2021--2025]
]

#hinweis[
  *Hilfsmittel:* CAS-Taschenrechner, Pool-Formelsammlung. *Umfang:* 100 BE. Zum Vergleich: Abitur eA sind 300 min einschließlich Auswahlzeit für 100 BE, also knapp 3 min pro BE; die Vorabi-Zeit trägt der Lehrer nach.\
  *Konventionen wie im Unterricht:* Rechnungen mit Einheiten und sinnvollen geltenden Ziffern. Jede TR-Auswertung in fünf Schritten dokumentieren: (1) Werte in den TR, (2) Diagramm mit Größen und Einheiten an den Achsen, (3) Regressionstyp physikalisch begründen, (4) Formel mit Formelzeichen und Einheiten, Achsenabschnitt diskutieren, (5) Konstante physikalisch deuten. „solve nach ..." benennen. Mit „möglichst genau" ist gemeint: alle Messwerte nutzen (Regression oder Mittelwert), nicht ein einzelner Wert. Stromrichtung = Bewegungsrichtung der Elektronen, Kraftrichtung mit der linken Hand. „Bestätigen Sie" heißt: vollständig herleiten, nicht einsetzen.\
  *Erwartungshorizont* liegt als eigene Datei bei. Erst alles rechnen, dann korrigieren, Punkte eintragen, Fehler in die Fehlerliste.
]

= Aufgabe 1: Elektrisches Feld und Kondensator #be(25)

== 1.1 #be(4)
In einem Plattenkondensator hängt an einem Kraftmesser eine kleine geladene Metallplatte (Ladung $Q$). Erläutern Sie, wie man mit diesem Aufbau zeigt, dass die Kraft auf die Platte proportional zu ihrer Ladung ist. Gehen Sie darauf ein, wie die Ladung verändert wird und woher man weiß, um welchen Faktor.

== 1.2 #be(7)
Für einen Plattenkondensator mit der Plattenfläche $A = 200 thin "cm"^2$ wird die Kapazität in Abhängigkeit vom Plattenabstand gemessen (Luft zwischen den Platten).

#align(center)[
  #table(
    columns: 6,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [$d$ in mm], [1,0], [2,0], [3,0], [4,0], [5,0],
    [$C$ in pF], [180], [87], [60], [45], [35],
  )
]

Werten Sie die Messreihe in der im Unterricht vereinbarten Weise aus und bestimmen Sie daraus einen Wert für die elektrische Feldkonstante $epsilon_0$. Vergleichen Sie mit dem Literaturwert.

== 1.3 #be(6)
Ein Kondensator wird über einen Widerstand $R = "2,2 k" Omega$ entladen. Die Spannung am Kondensator wird gemessen:

#align(center)[
  #table(
    columns: 7,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [$t$ in ms], [0], [2], [4], [6], [8], [10],
    [$U$ in V], [6,0], [4,0], [2,7], [1,8], [1,2], [0,8],
  )
]

a) Begründen Sie, warum ein exponentieller Zusammenhang zu erwarten ist. Gehen Sie dabei von der Maschenregel aus und nennen Sie die Form der Differentialgleichung. #be(2)\
b) Bestimmen Sie durch eine dokumentierte Regression die Zeitkonstante $tau$ und die Halbwertszeit sowie daraus die Kapazität $C$. #be(4)

== 1.4 #be(4)
Der Kondensator aus 1.2 mit $d = "1,0 mm"$ ($C = 177 "pF"$) wird an $U = 500 "V"$ geladen und dann von der Quelle getrennt. Anschließend wird eine Plexiglasplatte ($epsilon_r = "3,4"$) so eingeschoben, dass sie genau die Hälfte der Plattenfläche ausfüllt.\
Bestimmen Sie die neue Kapazität, die neue Spannung und die Änderung der gespeicherten Energie. Erklären Sie, wohin die Energie gegangen ist.

== 1.5 #be(4)
Elektronen werden aus der Ruhe mit $U_B = 400 "V"$ beschleunigt und treten mittig in einen Plattenkondensator ein (Plattenabstand $d = "2,0 cm"$, Plattenlänge $l = "6,0 cm"$, Ablenkspannung $U_A = 60 "V"$).\
Berechnen Sie die Eintrittsgeschwindigkeit und die Ablenkung am Ende der Platten. Entscheiden Sie, ob der Strahl die Platten verlässt. Begründen Sie, warum die Elektronenmasse für die Form der Bahn keine Rolle spielt.

= Aufgabe 2: Magnetfeld und Induktion #be(25)

== 2.1 #be(5)
Im Fadenstrahlrohr werden Elektronen mit $U_B = 300 "V"$ beschleunigt und durchlaufen im homogenen Feld eines Helmholtz-Spulenpaares ($B = "1,00 mT"$) eine Kreisbahn mit dem Radius $r = "5,8 cm"$.\
Leiten Sie her, wie man aus diesen Größen die spezifische Ladung $e / m_e$ bestimmt, und berechnen Sie den Wert. Vergleichen Sie mit dem Literaturwert und geben Sie zwei Gründe für Abweichungen an.

== 2.2 #be(5)
An einer Stromwaage befindet sich ein Leiterstück der Länge $l = "3,0 cm"$ in einem homogenen Magnetfeld. Gemessen wird die Kraft in Abhängigkeit von der Stromstärke:

#align(center)[
  #table(
    columns: 6,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [$I$ in A], [0,5], [1,0], [1,5], [2,0], [2,5],
    [$F$ in mN], [0,9], [1,7], [2,7], [3,5], [4,6],
  )
]

Bestimmen Sie die magnetische Flussdichte $B$ mit dokumentierter Auswertung. Erläutern Sie, welcher zweite Zusammenhang noch gemessen werden müsste, um $F = B dot I dot l$ vollständig zu begründen.

== 2.3 #be(8)
Eine Spule ($N = 500$, Querschnittsfläche $A = 20 thin "cm"^2$) befindet sich in einem Magnetfeld, dessen Flussdichte sich zeitlich wie im Diagramm ändert (Feld senkrecht zur Spulenfläche).

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    line((0, 0), (9, 0), mark: (end: ">"))
    line((0, 0), (0, 3.4), mark: (end: ">"))
    content((9.9, 0), text(size: 9pt)[$t$ in ms])
    content((0, 3.7), text(size: 9pt)[$B$ in mT])
    for i in range(1, 9) { line((i, -0.1), (i, 0.1)); content((i, -0.4), text(size: 9pt)[#(i * 10)]) }
    for j in range(1, 4) { line((-0.1, j), (0.1, j)); content((-0.5, j), text(size: 9pt)[#(j * 10)]) }
    line((0, 2.5), (8, 2.5), stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"))
    content((-0.5, 2.5), text(size: 9pt, fill: blue)[25])
    line((0, 0), (1, 2.5), (2, 0), (3, 2.5), (4, 0), (5, 2.5), (6, 0), (7, 2.5), (8, 0), stroke: blue + 1.5pt)
  })
]

a) Erläutern Sie, wie in der Spule eine Spannung entsteht, und berechnen Sie die induzierte Spannung für die Zeit von 0 bis 10 ms. #be(4)\
b) Skizzieren Sie den zeitlichen Verlauf der Induktionsspannung für 0 bis 80 ms mit Zahlenwerten. #be(2)\
c) Die Frequenz des Dreiecksignals wird verdoppelt. Begründen Sie, wie sich die Induktionsspannung ändert. #be(2)

== 2.4 #be(7)
Eine Spule (ohmscher Widerstand vernachlässigbar) wird in Reihe mit $R = 50 thin Omega$ an $U_0 = "10,0 V"$ geschaltet. Nach dem Einschalten wird die Stromstärke gemessen:

#align(center)[
  #table(
    columns: 6,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [$t$ in ms], [0], [5], [10], [20], [40],
    [$I$ in mA], [0], [79], [126], [173], [196],
  )
]

a) Erklären Sie mit der Lenzschen Regel, warum die Stromstärke nicht sofort ihren Endwert erreicht, und geben Sie den Endwert an. #be(3)\
b) Bestimmen Sie die Induktivität $L$ der Spule. Beschreiben Sie Ihren Weg so, dass er nachvollziehbar ist (Halbwertszeit oder Regression). #be(3)\
c) Berechnen Sie die im Magnetfeld der Spule gespeicherte Energie im Endzustand. #be(1)

= Aufgabe 3: Schwingungen und Wellen #be(25)

== 3.1 #be(6)
Ein Feder-Masse-Pendel ($m = "0,40 kg"$, $D = 25 "N/m"$) wird um $"5,0 cm"$ nach unten ausgelenkt und zur Zeit $t = 0$ losgelassen.\
a) Berechnen Sie Periodendauer und Frequenz. #be(1)\
b) Geben Sie die Auslenkung $y(t)$ mit allen Zahlenwerten an und begründen Sie die Wahl der Phase. #be(2)\
c) Berechnen Sie die maximale Geschwindigkeit und die maximale Beschleunigung und geben Sie an, wo sie auftreten. #be(2)\
d) Bestätigen Sie, dass $y(t) = hat(y) cos(omega t)$ die Differentialgleichung $m dot.double(y) + D y = 0$ löst, und folgern Sie $T = 2 pi sqrt(m / D)$. #be(1)

== 3.2 #be(5)
Mit einem Ultraschallsender ($f = "40,0 kHz"$), einem Spiegel und einem verschiebbaren Empfänger wird eine stehende Welle untersucht. Die Positionen der Amplitudenminima werden notiert:

#align(center)[
  #table(
    columns: 6,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [Nummer $u$], [1], [2], [3], [4], [5],
    [$s$ in cm], [0,43], [0,86], [1,30], [1,72], [2,15],
  )
]

Erklären Sie, wie die stehende Welle entsteht und warum man die Minima misst. Bestimmen Sie die Schallgeschwindigkeit möglichst genau mit dokumentierter Auswertung und vergleichen Sie mit dem Literaturwert.

== 3.3 #be(8)
Das Licht einer roten LED wird mit der subjektiven Methode an einem Gitter ($300$ Striche pro mm) untersucht. Der Abstand Gitter--Spaltblende beträgt $e = "25,0 cm"$. Das Band 1. Ordnung reicht von $a_1 = "4,7 cm"$ bis $a_2 = "5,3 cm"$ neben dem Spalt.\
a) Leiten Sie die Gleichung $n lambda = g sin(arctan(a_n / e))$ anhand einer Skizze begründet her. #be(4)\
b) Bestimmen Sie den Wellenlängenbereich der LED. #be(2)\
c) Schätzen Sie die Messunsicherheit der kurzwelligen Grenze ab ($Delta a = 2 "mm"$, $Delta e = 3 "mm"$) und geben Sie das Ergebnis in der im Unterricht vereinbarten Schreibweise an. #be(2)

== 3.4 #be(6)
Unpolarisiertes Licht der Intensität $I_0$ fällt auf einen Polarisationsfilter (Durchlassrichtung $0°$), dann auf einen zweiten ($30°$) und einen dritten ($90°$).\
a) Erläutern Sie den Unterschied zwischen transversalen und longitudinalen Wellen und begründen Sie, warum nur eine der beiden Sorten polarisierbar ist. #be(3)\
b) Berechnen Sie die Intensität hinter jedem Filter. #be(2)\
c) Begründen Sie, was ohne den mittleren Filter ankommt. #be(1)

= Aufgabe 4: Quanten #be(25)

== 4.1 #be(6)
Mit der Gegenfeldmethode wird für verschiedene Wellenlängen die Spannung $U_0$ gemessen, bei der der Photostrom gerade verschwindet:

#align(center)[
  #table(
    columns: 5,
    stroke: 0.6pt,
    fill: (x, y) => if y == 0 { luma(235) },
    [$lambda$ in nm], [405], [436], [546], [578],
    [$U_0$ in V], [1,21], [0,99], [0,42], [0,30],
  )
]

a) Erläutern Sie, was die Spannung $U_0$ über die Elektronen aussagt. #be(1)\
b) Bestimmen Sie aus einem $f$-$E_"kin"$-Diagramm das Plancksche Wirkungsquantum und die Austrittsarbeit (dokumentiert). #be(4)\
c) Begründen Sie, warum eine höhere Lichtintensität $U_0$ nicht verändert. #be(1)

== 4.2 #be(7)
In einer Elektronenbeugungsröhre ($U_B = "3,00 kV"$, Abstand Graphit--Schirm $e = "13,3 cm"$) hat der innere Ring den Durchmesser $D = "3,0 cm" plus.minus "0,2 cm"$.\
a) Leiten Sie her, welche Wellenlänge den Elektronen zugeordnet wird, und berechnen Sie sie. #be(3)\
b) Bestimmen Sie den Netzebenenabstand im Graphit mit der Bragg-Bedingung und schätzen Sie seine Unsicherheit ab. #be(3)\
c) Erklären Sie, warum Ringe und keine Punkte entstehen. #be(1)

== 4.3 #be(6)
Beim Doppelspaltversuch mit einzelnen Elektronen (Tonomura 1989) erscheinen auf dem Schirm nach 11, 200, 6000 und 140 000 Elektronen nacheinander folgende Bilder: einzelne verstreute Punkte; mehr Punkte, scheinbar regellos; erkennbare helle und dunkle Streifen; ein klares Streifenmuster.\
a) Interpretieren Sie diese Beobachtungen. Verwenden Sie dabei die Begriffe Quantenobjekt, Wahrscheinlichkeit und Interferenz. #be(4)\
b) Entwickeln Sie ein Gedankenexperiment, das die Komplementarität bei diesem Versuch nachweist, und geben Sie das erwartete Ergebnis an. #be(2)

== 4.4 #be(6)
Für das Wasserstoffatom gilt $E_n = - "13,6 eV" / n^2$.\
a) Zeichnen Sie ein maßstabsgerechtes Energieniveauschema für $n = 1$ bis $4$. #be(2)\
b) Berechnen Sie die Wellenlängen der Übergänge $4 -> 2$ und $3 -> 1$ und ordnen Sie sie dem Spektralbereich zu. #be(3)\
c) Begründen Sie, ob das Licht einer Glühlampe Wasserstoffatome im Grundzustand anregen kann. #be(1)

#v(1em)
#align(center)[#text(size: 10pt, fill: gray)[Ende der Aufgaben. Gesamt 100 BE. Bewertungsmaßstab (Abitur): ab 95 % 15 Punkte, 90 % 14, 85 % 13, 80 % 12, 75 % 11, 70 % 10, 65 % 9, 60 % 8, 55 % 7, 50 % 6, 45 % 5, 40 % 4, 33 % 3, 27 % 2, 20 % 1.]]
