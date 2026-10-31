#set text(lang: "de", size: 10.5pt)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.8cm), numbering: "1 / 1", header: [#text(size: 9pt, fill: gray)[Übungsklausur 1 (Vorabitur-Stil) #h(1fr) Physik eA #h(1fr) Erwartungshorizont]])
#set par(justify: true)
#set heading(numbering: none)
#show heading.where(level: 1): it => block(above: 1.2em, below: 0.6em)[#text(size: 14pt, weight: "bold")[#it.body]]
#show heading.where(level: 2): it => block(above: 1em, below: 0.4em)[#text(size: 11.5pt, weight: "bold")[#it.body]]

// Eine Bewertungszeile: Nummer, erwartete Leistung, BE, leeres Feld zum Eintragen
#let r(nr, body, be) = (text(size: 9pt, weight: "bold")[#nr], text(size: 9.5pt)[#body], align(center)[#text(size: 9.5pt)[#be]], [])
#let summe(label, be) = (table.cell(colspan: 2, align(right)[*#label*]), align(center)[*#be*], [])
#let ewh(..rows) = table(
  columns: (1.5cm, 1fr, 0.9cm, 1.4cm),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (x, y) => if y == 0 { luma(228) },
  [*Nr.*], [*Erwartete Leistung (Lösungsskizze)*], [*BE*], [*erreicht*],
  ..rows.pos().flatten(),
)
#let hinweis(body) = block(fill: luma(240), inset: 8pt, radius: 4pt, width: 100%)[#text(size: 9.5pt)[#body]]

#align(center)[
  #text(size: 17pt, weight: "bold")[Erwartungshorizont zur Übungsklausur 1]\
  #v(0.3em)
  #text(size: 10pt, fill: gray)[Zum Selbstkorrigieren. Punkte in die letzte Spalte eintragen, am Ende summieren.]
]

#hinweis[
  *So korrigierst du wie der Lehrer:* Ein Kriterium gibt volle BE nur, wenn Rechenweg, Einheiten und Begründung da sind. Richtiges Ergebnis ohne Ansatz: höchstens die Hälfte. Folgefehler: Wenn ein falscher Zwischenwert korrekt weiterverarbeitet wird, gibt es die Folgepunkte trotzdem. Bei TR-Auswertungen zählt die Dokumentation (Diagramm mit Achsenbeschriftung, begründeter Regressionstyp, Formel mit Einheiten, Deutung) genauso wie die Zahl. Abweichende Lösungswege sind gleichwertig, wenn sie physikalisch korrekt sind.\
  *Zahlenwerte:* Toleranz etwa 2 % bei Rechnungen, bei Regressionen je nach Rundung mehr. Konstanten aus der Formelsammlung: $e = "1,602" dot 10^(-19) thin "C"$, $m_e = "9,109" dot 10^(-31) thin "kg"$, $h = "6,626" dot 10^(-34) thin "Js"$, $epsilon_0 = "8,854" dot 10^(-12) thin "As/(Vm)"$, $c = "2,998" dot 10^8 thin "m/s"$.
]

= Aufgabe 1: Elektrisches Feld und Kondensator (25 BE)

#ewh(
  r("1.1", [Platte hängt im homogenen Feld des Plattenkondensators; $U$ und $d$ bleiben fest, also ist $E = U/d$ konstant. Kraft am Kraftmesser ablesen.], 1),
  r("", [Ladung gezielt verändern: geladene Platte mit einer baugleichen, ungeladenen Platte berühren. Aus Symmetrie verteilt sich die Ladung gleichmäßig, jede Platte trägt danach $Q/2$. Wiederholen liefert $Q/4$, $Q/8$ usw. So kennt man den Faktor, ohne $Q$ absolut messen zu müssen (alternativ: Ladung mit Messverstärker messen).], 2),
  r("", [Beobachtung: Mit jeder Halbierung der Ladung halbiert sich die Kraft, also $F prop Q$ (Quotient $F/Q$ konstant). Zusammen mit $F prop U$ bei fester Ladung folgt $F = Q dot E$ mit $E = U/d$.], 1),
  r("1.2", [(1) Werte in den TR. (2) Diagramm $C$ in pF über $d$ in mm, Achsen beschriftet. Verlauf: fallend, hyperbelartig.], 1),
  r("", [(3) Begründung des Regressionstyps: Erwartet wird $C = epsilon_0 A / d$, denn $E = U/d$ und $Q = epsilon_0 E A$ ergeben $Q/U = epsilon_0 A/d$. Also Potenzregression (Erwartung: Exponent $-1$) oder Linearisierung mit $C$ über $1/d$.], 1),
  r("", [(4) Ergebnis mit Einheiten. Potenzregression: $C = "1,72" dot 10^(-13) thin "F" dot "m" dot d^(- "1,006")$, $r = -"0,9997"$. Exponent $approx -1$ bestätigt die Hyperbel. Alternativ linear: $C = "1,80" dot 10^(-13) thin "F" dot "m" dot 1/d - "0,9 pF"$, $r = "0,9998"$; Achsenabschnitt im Rahmen der Messgenauigkeit null (Erwartung: Ursprungsgerade). Dritte Möglichkeit: Produkte $C dot d$ bilden, Mittelwert $"1,78" dot 10^(-13) thin "F" dot "m"$.], 2),
  r("", [(5) Deutung der Konstante: Faktor $k = epsilon_0 A$, also $epsilon_0 = k/A$ mit $A = "0,0200 m"^2$. Potenzregression: $epsilon_0 approx "8,6" dot 10^(-12) thin "As/(Vm)"$; linear: $"9,0" dot 10^(-12)$; Mittelwert: $"8,9" dot 10^(-12)$.], 1),
  r("", [Vergleich: Literaturwert $"8,854" dot 10^(-12) thin "As/(Vm)"$, Abweichung je nach Verfahren 0,4 % bis 3 %, für Pikofarad-Messungen gut (Streukapazitäten der Zuleitungen, Randfeld, Plattenabstand bei 1 mm schwer exakt).], 1),
  r("", [Durchgängig Einheiten, sinnvolle geltende Ziffern (3 Stellen), Regression mit Formelzeichen statt TR-Buchstaben $a$, $b$.], 1),
  r("1.3 a", [Maschenregel: $U_C + U_R = 0$, also $Q/C + R I = 0$. Mit $I = dot(Q)$ (Entladestrom verringert die Ladung): $dot(Q) = -Q/(R C)$. Änderungsrate proportional zum Bestand, das ist die Kennzeichnung exponentiellen Zerfalls. Lösung $Q(t) = Q_0 e^(-t/(R C))$, damit auch $U(t) = U_0 e^(-t/tau)$ mit $tau = R C$.], 2),
  r("1.3 b", [Dokumentierte Exponentialregression ($U$ über $t$, Typ begründet mit a): TR liefert $U = "6,01 V" dot "0,818"^(t/"ms")$, $r = -"0,99999"$. Umschreiben: $e^(-1/tau) = "0,818"$, also $tau = -1 thin "ms" / ln("0,818") = "4,97 ms"$ (gleichwertig: Regression von $ln U$ über $t$, Steigung $-1/tau$).], 2),
  r("", [Halbwertszeit $T_(1/2) = tau dot ln 2 = "3,44 ms"$ (Kontrolle an den Daten: 6,0 V bei 0 ms, 3,0 V etwa bei 3,4 ms).], 1),
  r("", [$C = tau / R = "4,97" dot 10^(-3) thin "s" / 2200 thin Omega = "2,26" dot 10^(-6) thin "F" = "2,26" thin mu"F"$.], 1),
  r("1.4", [Nach dem Trennen von der Quelle bleibt die Ladung erhalten: $Q = C U = "177 pF" dot "500 V" = "88,5 nC"$.], 1),
  r("", [Halbe Fläche mit Luft, halbe mit Plexiglas wirkt wie zwei parallel geschaltete Kondensatoren (gleiche Spannung): $C' = C/2 + epsilon_r C/2 = C (1 + epsilon_r)/2 = "177 pF" dot "2,2" = "389 pF"$.], 1),
  r("", [$U' = Q/C' = "88,5 nC" / "389 pF" = "227 V"$.], 0.5),
  r("", [$E_0 = 1/2 C U^2 = "22,1" thin mu"J"$, $E' = 1/2 Q^2/C' = "10,1" thin mu"J"$ (oder $1/2 C' U'^2$), also $Delta E = -"12,1" thin mu"J"$: die gespeicherte Energie nimmt ab.], 1),
  r("", [Deutung: Das Dielektrikum wird in den Kondensator hineingezogen (die polarisierten Moleküle werden im inhomogenen Randfeld angezogen). Das Feld verrichtet an der Platte mechanische Arbeit; wird sie langsam geführt, geht die Energie an die haltende Hand bzw. in Wärme, lässt man sie los, in Bewegungsenergie.], 0.5),
  r("1.5", [Energieansatz $e U_B = 1/2 m_e v^2$, also $v = sqrt(2 e U_B / m_e) = "1,19" dot 10^7 thin "m/s"$.], 1),
  r("", [Ablenkfeld $E = U_A/d = "3000 V/m"$, Beschleunigung $a = e E/m_e = "5,28" dot 10^14 thin "m/s"^2$, Flugzeit $t = l/v = "5,06" dot 10^(-9) thin "s"$, Ablenkung $y = 1/2 a t^2 = "6,75 mm"$ (gleichwertig über die Bahngleichung $y = U_A x^2 / (4 d U_B)$).], 1.5),
  r("", [Vergleich mit dem halben Plattenabstand: $"6,75 mm" < "10 mm"$, der Strahl verlässt die Platten.], 0.5),
  r("", [Einsetzen von $v^2 = 2 e U_B/m_e$ in $y = e E l^2/(2 m_e v^2)$ liefert $y = U_A l^2/(4 d U_B)$: $e$ und $m_e$ kürzen sich. Die Bahnform hängt nur von Spannungen und Geometrie ab, weil Beschleunigung und Eintrittsgeschwindigkeit beide mit $e/m$ skalieren. Mit demselben Aufbau kann man daher $e/m$ nicht messen.], 1),
  summe("Summe Aufgabe 1", 25),
)

= Aufgabe 2: Magnetfeld und Induktion (25 BE)

#ewh(
  r("2.1", [Energieansatz: $e U_B = 1/2 m_e v^2$.], 0.5),
  r("", [Lorentzkraft wirkt als Zentripetalkraft (Kraft senkrecht zu $v$, Betrag von $v$ bleibt konstant): $e v B = m_e v^2/r$, also $v = e B r/m_e$.], 1),
  r("", [Einsetzen und solve nach $e/m_e$: $e U_B = 1/2 m_e (e B r/m_e)^2$ ergibt $e/m_e = 2 U_B/(B^2 r^2)$.], 1),
  r("", [Zahlenwert: $e/m_e = 2 dot "300 V" / (("1,00" dot 10^(-3) thin "T")^2 dot ("0,058 m")^2) = "1,78" dot 10^11 thin "C/kg"$.], 1),
  r("", [Literaturwert $"1,759" dot 10^11 thin "C/kg"$, Abweichung $+"1,4 %"$. Gründe (zwei genügen): Radius durch Parallaxe und Strahlbreite ungenau; $B$ aus dem Spulenstrom berechnet, Feld nicht exakt homogen; Elektronen verlassen die Glühkathode nicht mit $v = 0$; Energieverlust durch Stöße mit Gasatomen (deshalb leuchtet die Bahn), was den Radius verkleinert.], 1.5),
  r("2.2", [Diagramm $F$ in mN über $I$ in A mit Einheiten. Begründung linear: Bei festem $l$ und $B$ wird $F prop I$ erwartet (doppelter Strom, doppelt so viele bewegte Ladungen pro Zeit, doppelte Kraft), Ursprungsgerade.], 1),
  r("", [Lineare Regression: $F = "1,84 mN/A" dot I - "0,08 mN"$, $r = "0,9986"$. Achsenabschnitt im Rahmen der Messgenauigkeit null (Kraftmesser-Nullpunkt). Steigung entspricht $B dot l$.], 2),
  r("", [$B = m/l = "1,84" dot 10^(-3) thin "N/A" / "0,030 m" = "0,061 T" = "61 mT"$ (Ursprungsgerade erzwungen: 60 mT).], 1),
  r("", [Zweite Messreihe: Kraft in Abhängigkeit von der Leiterlänge $l$ bei festem $I$ (Leiterschleifen verschiedener Breite im selben Feld). Erwartung $F prop l$. Erst $F prop I$ und $F prop l$ zusammen begründen $F prop I dot l$; der Proportionalitätsfaktor definiert $B = F/(I l)$.], 1),
  r("2.3 a", [Die Flussdichte ändert sich, damit ändert sich der magnetische Fluss $Phi = B dot A$ durch jede Windung. Nach dem Induktionsgesetz entsteht eine Spannung $U_"ind" = -N dot dot(Phi) = -N A dot dot(B)$ (Fläche fest, nur $B$ zeitabhängig). Ursache ist die Änderung, nicht der Betrag des Feldes.], 2),
  r("", [Steigung aus dem Diagramm: $dot(B) = "25 mT" / "10 ms" = "2,5 T/s"$. $|U_"ind"| = 500 dot "20" dot 10^(-4) thin "m"^2 dot "2,5 T/s" = "2,5 V"$. Vorzeichen nach Lenz (je nach Wicklungssinn).], 2),
  r("2.3 b", [Rechteckverlauf: in jedem 10-ms-Abschnitt ist $dot(B)$ konstant, also $U$ konstant. 0 bis 10 ms: $-"2,5 V"$, 10 bis 20 ms: $+"2,5 V"$, dann im Wechsel; Sprünge genau an den Knickstellen von $B(t)$, Vorzeichenwechsel mit dem Wechsel von Anstieg zu Abfall. Achsen beschriftet, Werte eingetragen.], 2),
  r("2.3 c", [Doppelte Frequenz bei gleicher Amplitude: Anstieg von 0 auf 25 mT in 5 ms statt 10 ms, Steigung verdoppelt, also $U = plus.minus "5,0 V"$. Rechteck mit halber Periodendauer (Wechsel alle 5 ms). Allgemein: $U_"ind" prop f$ bei fester Amplitude.], 2),
  r("2.4 a", [Nach dem Einschalten steigt $I$, mit ihm das Magnetfeld der Spule, also der Fluss durch die eigenen Windungen. Die Flussänderung induziert eine Selbstinduktionsspannung, die nach Lenz ihrer Ursache (dem Stromanstieg) entgegenwirkt: der Strom kann nur allmählich anwachsen. Je kleiner der noch fehlende Rest, desto kleiner die Änderungsrate.], 2),
  r("", [Endwert, wenn sich nichts mehr ändert (keine Induktionsspannung): $I_"end" = U_0/R = "10 V" / "50" Omega = "200 mA"$ (passt zu 196 mA bei 40 ms).], 1),
  r("2.4 b", [$I(t) = I_"end" (1 - e^(-t/tau))$ mit $tau = L/R$. Weg 1 (Halbwertszeit): $1 - I/I_"end"$ ist exponentiell, $I$ erreicht 100 mA bei $t = tau ln 2$; aus den Daten (zwischen 5 und 10 ms, interpoliert etwa 7 ms) folgt $tau approx "10 ms"$. Weg 2 (Regression): $y = 1 - I/I_"end"$ über $t$ exponentiell, $y = "0,97" dot e^(-t/"10,3 ms")$, $r = -"0,9999"$. Weg 3: für jeden Messwert $tau_i = -t/ln(1 - I/I_"end")$: 9,95; 10,06; 9,99; 10,2 ms, Mittel 10,1 ms.], 2),
  r("", [$L = tau R = "10" dot 10^(-3) thin "s" dot 50 thin Omega = "0,50 H"$ (Toleranz 0,49 bis 0,52 H).], 1),
  r("2.4 c", [$E_"mag" = 1/2 L I^2 = 1/2 dot "0,50 H" dot ("0,200 A")^2 = "0,010 J" = "10 mJ"$.], 1),
  summe("Summe Aufgabe 2", 25),
)

= Aufgabe 3: Schwingungen und Wellen (25 BE)

#ewh(
  r("3.1 a", [$omega = sqrt(D/m) = sqrt("25 N/m" / "0,40 kg") = "7,91 s"^(-1)$; $T = 2 pi sqrt(m/D) = "0,795 s"$; $f = 1/T = "1,26 Hz"$.], 1),
  r("3.1 b", [$y(t) = -"5,0 cm" dot cos("7,91 s"^(-1) dot t)$ bei Zählung nach oben positiv (Start in der unteren Umkehrlage); gleichwertig $+"5,0 cm" dot cos(omega t)$, wenn nach unten positiv gezählt wird, oder $hat(y) sin(omega t plus.minus pi/2)$. Begründung: Bei $t = 0$ ist die Auslenkung maximal und $v = 0$, das leistet der Kosinus ohne Phasenverschiebung. Ein Sinus-Ansatz ohne Phase würde mit $y = 0$ und maximaler Geschwindigkeit starten, also die falsche Anfangsbedingung beschreiben.], 2),
  r("3.1 c", [$v_max = omega hat(y) = "7,91 s"^(-1) dot "0,050 m" = "0,40 m/s"$ beim Durchgang durch die Gleichgewichtslage (Rückstellkraft null, Geschwindigkeit maximal). $a_max = omega^2 hat(y) = "3,1 m/s"^2$ in den Umkehrpunkten (maximale Auslenkung, maximale Rückstellkraft $D hat(y) = "1,25 N"$, Kontrolle: $"1,25 N" / "0,40 kg" = "3,1 m/s"^2$).], 2),
  r("3.1 d", [Ableiten: $dot(y) = -omega hat(y) sin(omega t)$, $dot.double(y) = -omega^2 hat(y) cos(omega t) = -omega^2 y$. Einsetzen: $m (-omega^2 y) + D y = (D - m omega^2) y = 0$ für alle $t$ genau dann, wenn $omega^2 = D/m$. Mit $omega = 2 pi/T$ folgt $T = 2 pi sqrt(m/D)$.], 1),
  r("3.2", [Entstehung: Die vom Sender kommende Welle und die am Spiegel reflektierte Welle laufen gegeneinander, gleiche Frequenz und Wellenlänge. Überlagerung ergibt eine stehende Welle: an festen Orten löschen sich die Teilwellen immer aus (Knoten, Gangunterschied der beiden Wellen ungerades Vielfaches von $lambda/2$), dazwischen schwingt die Luft mit doppelter Amplitude (Bäuche). Benachbarte Knoten haben den Abstand $lambda/2$, weil sich der Gangunterschied pro Verschiebung um $Delta s$ um $2 Delta s$ ändert (Hin- und Rückweg).], 1.5),
  r("", [Minima statt Maxima: Beim Minimum fällt die Amplitude auf nahezu null, die Position ist scharf; das Maximum ist flach und daher ungenau zu lokalisieren.], 0.5),
  r("", [Dokumentierte Auswertung: $s$ über $u$, lineare Regression, begründet mit dem konstanten Knotenabstand $lambda/2$ (Ergebnis soll Gerade mit Steigung $lambda/2$ sein). TR: $s = "0,430 cm" dot u + "0,002 cm"$, $r = "0,99998"$. Achsenabschnitt praktisch null (Nullpunkt der Skala). Steigung $lambda/2 = "0,430 cm"$, also $lambda = "8,60 mm"$. Ein einzelner Abstand (etwa 0,44 cm zwischen Minimum 2 und 3) wäre weniger genau, deshalb Regression oder Mittelwert aller Abstände.], 2),
  r("", [$c = lambda f = "8,60" dot 10^(-3) thin "m" dot "40,0" dot 10^3 thin "Hz" = "344 m/s"$. Literaturwert bei 20 °C: 343 m/s, Abweichung 0,3 %, Raumtemperatur passt.], 1),
  r("3.3 a", [Skizze: Auge direkt hinter dem Gitter, Spalt (Lichtquelle) in der Entfernung $e$, Maßstab in der Spaltebene; das Band 1. Ordnung erscheint als virtuelles Bild seitlich im Abstand $a_1$ vom Spalt. Herleitung der Gitterbedingung: Von benachbarten Gitterspalten (Abstand $g$) ausgehende Strahlen, die das Auge aus der Richtung $alpha$ erreichen, sind näherungsweise parallel; ihr Gangunterschied ist $delta = g sin alpha$ (rechtwinkliges Dreieck mit Hypotenuse $g$). Konstruktive Interferenz, wenn $delta$ ein ganzzahliges Vielfaches der Wellenlänge ist: $n lambda = g sin alpha_n$.], 2),
  r("", [Winkel aus der Geometrie: Das Auge sieht das Bild unter dem Winkel $alpha_n$ gegen die Achse Gitter--Spalt; im rechtwinkligen Dreieck mit Gegenkathete $a_n$ und Ankathete $e$ gilt $tan alpha_n = a_n/e$, also $alpha_n = arctan(a_n/e)$.], 1),
  r("", [Zusammenführen: $n lambda = g sin(arctan(a_n/e))$. Hinweis auf den Fehler, den die Kleinwinkelnäherung $sin alpha approx tan alpha$ hier machen würde (bei 11° etwa 2 %).], 1),
  r("3.3 b", [$g = "1 mm" / 300 = "3,33" thin mu"m"$. Untere Grenze: $alpha_1 = arctan("4,7" / "25,0") = "10,6°"$, $lambda_1 = g sin alpha_1 = "616 nm"$. Obere Grenze: $alpha_2 = arctan("5,3" / "25,0") = "12,0°"$, $lambda_2 = "691 nm"$. LED-Band etwa 616 bis 691 nm, rot, passend.], 2),
  r("3.3 c", [Min-Max-Abschätzung für die kurzwellige Grenze (wie im Heft): kleinste Wellenlänge mit $a = "4,5 cm"$ und $e = "25,3 cm"$: 584 nm; größte mit $a = "4,9 cm"$ und $e = "24,7 cm"$: 649 nm. Schreibweise: $lambda_1 = 616^(+33)_(-32) "nm"$ oder $(616 plus.minus 33) "nm"$. Relative Unsicherheit rund 5 %; der Hauptbeitrag kommt von $Delta a/a approx "4 %"$, $Delta e/e$ trägt nur 1 % bei. Verbesserung: größeres $e$ oder höhere Ordnung messen.], 2),
  r("3.4 a", [Transversalwelle: Schwingungsrichtung senkrecht zur Ausbreitungsrichtung (Seilwelle, Licht als elektromagnetische Welle mit schwingendem $arrow(E)$-Feld). Longitudinalwelle: Schwingung parallel zur Ausbreitungsrichtung (Schall, Verdichtungen und Verdünnungen).], 1.5),
  r("", [Polarisieren heißt, in der Ebene senkrecht zur Ausbreitung eine Schwingungsrichtung auszuwählen. Bei einer Longitudinalwelle gibt es nur eine einzige mögliche Schwingungsrichtung (die Ausbreitungsrichtung selbst), es gibt nichts auszuwählen, ein „Filter" könnte nichts unterscheiden. Dass Licht polarisierbar ist, ist deshalb der Beweis seiner Transversalität.], 1.5),
  r("3.4 b", [Filter 1: Unpolarisiertes Licht enthält alle Schwingungsrichtungen gleich häufig; der Mittelwert von $cos^2$ über alle Winkel ist $1/2$, also $I_1 = I_0/2$.], 0.5),
  r("", [Filter 2 (Malus): $I_2 = I_1 cos^2 30° = "0,5" dot "0,75" dot I_0 = "0,375" I_0$.], 0.75),
  r("", [Filter 3: Winkel zwischen 30° und 90° beträgt 60°: $I_3 = I_2 cos^2 60° = "0,375" dot "0,25" dot I_0 = "0,094" I_0$, also etwa 9 % der Ausgangsintensität.], 0.75),
  r("3.4 c", [Ohne den mittleren Filter stehen Filter 1 und 3 gekreuzt (90°): $I = I_1 cos^2 90° = 0$, Dunkelheit. Der mittlere Filter dreht die Polarisationsrichtung in einem Zwischenschritt und lässt so Licht durch, obwohl er nur Licht wegnimmt. Grund: Hinter jedem Filter ist das Licht in dessen Richtung polarisiert, das Projizieren geschieht schrittweise.], 1),
  summe("Summe Aufgabe 3", 25),
)

= Aufgabe 4: Quanten (25 BE)

#ewh(
  r("4.1 a", [$U_0$ ist die Gegenspannung, bei der auch die schnellsten Elektronen die Anode gerade nicht mehr erreichen: $e U_0 = E_("kin",max)$. Sie misst also die maximale kinetische Energie der ausgelösten Elektronen (in eV zahlenmäßig gleich $U_0$ in V).], 1),
  r("4.1 b", [Umrechnen: $f = c/lambda$: 7,40; 6,88; 5,49; 5,19 (jeweils $dot 10^14 thin "Hz"$); $E_"kin" = e U_0$: 1,21; 0,99; 0,42; 0,30 eV.], 1),
  r("", [Diagramm $E_"kin"$ in eV über $f$ in Hz, Achsen beschriftet. Lineare Regression, begründet mit der Einstein-Gleichung $E_"kin" = h f - W_A$: linear in $f$, Steigung $h$, Achsenabschnitt $-W_A$.], 1),
  r("", [TR: $E_"kin" = "4,11" dot 10^(-15) thin "eVs" dot f - "1,83 eV"$, $r = "0,99998"$. Also $h = "4,11" dot 10^(-15) thin "eVs" = "6,59" dot 10^(-34) thin "Js"$; Literaturwert $"6,626" dot 10^(-34) thin "Js"$, Abweichung $-"0,6 %"$.], 1),
  r("", [$W_A = "1,83 eV"$ (Betrag des Achsenabschnitts). Deutung: Energie, die mindestens nötig ist, um ein Elektron aus dem Metall zu lösen; Grenzfrequenz $f_0 = W_A/h = "4,46" dot 10^14 thin "Hz"$ (672 nm), darunter kein Photoeffekt. Alkalimetall-Kathode plausibel.], 1),
  r("4.1 c", [Intensität bedeutet mehr Photonen pro Zeit, nicht mehr Energie pro Photon. Jedes Elektron nimmt die Energie genau eines Photons $h f$ auf. Also hängt $E_("kin",max)$ und damit $U_0$ nur von $f$ ab. Höhere Intensität vergrößert nur die Zahl der Elektronen, also den Sättigungsstrom. Klassische Wellenvorstellung würde das Gegenteil vorhersagen, deshalb ist das ein Argument für Photonen.], 1),
  r("4.2 a", [Elektronen aus der Ruhe: $e U_B = 1/2 m_e v^2 = p^2/(2 m_e)$, also $p = sqrt(2 m_e e U_B)$.], 1),
  r("", [De-Broglie-Beziehung $lambda = h/p$, eingesetzt $lambda = h / sqrt(2 m_e e U_B)$.], 1),
  r("", [$lambda = "6,626" dot 10^(-34) thin "Js" / sqrt(2 dot "9,109" dot 10^(-31) thin "kg" dot "1,602" dot 10^(-19) thin "C" dot 3000 thin "V") = "2,24" dot 10^(-11) thin "m" = "22,4 pm"$ (Kontrolle: $v = "3,25" dot 10^7 thin "m/s"$, gut 10 % von $c$, nichtrelativistisch noch vertretbar).], 1),
  r("4.2 b", [Geometrie: Der Strahl wird an einer Netzebenenschar unter dem Glanzwinkel $theta$ „reflektiert", der Ablenkwinkel gegen die Achse ist $2 theta$. Aus dem Ringradius $D/2 = "1,5 cm"$ und dem Abstand $e = "13,3 cm"$: $tan(2 theta) = "1,5" / "13,3"$, $2 theta = "6,43°"$, $theta = "3,22°"$.], 1),
  r("", [Bragg-Bedingung $n lambda = 2 d sin theta$ mit $n = 1$: $d = lambda/(2 sin theta) = "22,4 pm" / (2 dot "0,0561") = "200 pm"$. (Kleinwinkelnäherung $d approx 2 e lambda/D$ liefert 199 pm, hier zulässig.)], 1),
  r("", [Unsicherheit über Min-Max: $D = "2,8 cm"$ gibt 214 pm, $D = "3,2 cm"$ gibt 187 pm, also $d = 200^(+14)_(-13) "pm"$; relativ etwa 7 %, entsprechend $Delta D/D = "0,2" / "3,0"$ (bei kleinen Winkeln ist $d$ umgekehrt proportional zu $D$). Literaturwert für Graphit 213 pm liegt im Intervall.], 1),
  r("4.2 c", [Graphit ist polykristallin: viele winzige Kristallite in allen Orientierungen. Für jede Netzebenenschar gibt es Kristallite, die zum Strahl genau unter dem Glanzwinkel $theta$ stehen, aber um die Strahlachse beliebig verdreht sind. Die reflektierten Strahlen bilden einen Kegel mit dem Öffnungswinkel $2 theta$, auf dem Schirm ein Ring. Ein Einkristall gäbe einzelne Punkte. Der zweite Ring gehört zu einer anderen Netzebenenschar (kleineres $d$, größerer Winkel).], 1),
  r("4.3 a", [Jedes Elektron wird als Ganzes an einem Punkt registriert: lokalisierte Wechselwirkung, Teilchenaspekt. Es kommt nie ein „halbes" Elektron oder eine verschmierte Welle an.], 1),
  r("", [Die einzelnen Auftrefforte sind nicht vorhersagbar und wirken regellos. Festgelegt ist nur die Wahrscheinlichkeit, mit der ein Elektron an einem Ort ankommt (Quadrat des Betrags der Wellenfunktion). Zufall ist hier grundsätzlich, nicht Unkenntnis.], 1),
  r("", [Mit wachsender Zahl bildet sich das Doppelspalt-Interferenzmuster: Die Wahrscheinlichkeitsverteilung entspricht der Intensitätsverteilung einer Welle mit $lambda = h/p$. Da immer nur ein Elektron unterwegs ist, kann es nicht mit anderen Elektronen interferieren; die Welle beschreibt die Möglichkeiten eines einzelnen Quantenobjekts, das durch beide Spalte „geht", solange nicht festgestellt wird, durch welchen.], 1.5),
  r("", [Begriff Quantenobjekt: weder klassisches Teilchen noch klassische Welle, sondern ein Objekt mit eigenen Wesenszügen (stochastisches Verhalten, Interferenzfähigkeit, Komplementarität, eindeutige Messergebnisse). Welche Eigenschaft sichtbar wird, hängt von der Versuchsanordnung ab.], 0.5),
  r("4.3 b", [Gedankenexperiment: Weginformation erzeugen, zum Beispiel eine Lichtquelle hinter dem Doppelspalt, deren Photonen an jedem Elektron gestreut werden und so verraten, hinter welchem Spalt es war; oder Detektoren an beiden Spalten; oder einen Spalt abwechselnd schließen.], 1),
  r("", [Erwartetes Ergebnis: Sobald der Weg im Prinzip feststeht (die beiden Alternativen unterscheidbar sind), verschwindet das Interferenzmuster und es bleibt die Summe zweier Einzelspaltverteilungen. Weginformation und Interferenz schließen einander aus (Komplementarität). Wird die Weginformation anschließend unwiederbringlich gelöscht (Quantenradierer), kehrt das Muster zurück. Entscheidend ist die Unterscheidbarkeit, nicht die „Störung" durch den Beobachter.], 1),
  r("4.4 a", [Niveaus: $E_1 = -"13,6 eV"$, $E_2 = -"3,40 eV"$, $E_3 = -"1,51 eV"$, $E_4 = -"0,85 eV"$, Ionisationsgrenze $E_oo = 0$. Zeichnung maßstäblich (etwa 1 cm pro eV), Niveaus rücken nach oben zusammen, Achse mit Einheit, Niveaus beschriftet.], 2),
  r("4.4 b", [$4 -> 2$: $Delta E = -"0,85 eV" - (-"3,40 eV") = "2,55 eV"$; $lambda = h c / Delta E = "1240 eV" dot "nm" / "2,55 eV" = "486 nm"$, sichtbar, blaugrün (Balmer-Serie, $H_beta$).], 1.5),
  r("", [$3 -> 1$: $Delta E = -"1,51 eV" - (-"13,6 eV") = "12,1 eV"$; $lambda = "1240 eV" dot "nm" / "12,1 eV" = "103 nm"$, Ultraviolett (Lyman-Serie). Übergänge auf $n = 1$ liegen alle im UV, da schon $1 -> 2$ 10,2 eV braucht.], 1.5),
  r("4.4 c", [Anregung aus dem Grundzustand braucht mindestens $E_2 - E_1 = "10,2 eV"$ ($lambda = "122 nm"$, UV). Photonen einer Glühlampe liegen im Sichtbaren und Infraroten, höchstens etwa 3 eV (violett, 400 nm). Außerdem muss die Energie eines einzelnen Photons genau passen; mehrere Photonen können ihre Energie nicht zusammenlegen. Also keine Anregung, Wasserstoff im Grundzustand ist für das Licht der Glühlampe durchsichtig (Fraunhofer-Linien in der Sonne entstehen dagegen bei angeregten Atomen bzw. anderen Elementen).], 1),
  summe("Summe Aufgabe 4", 25),
)

= Gesamtbewertung

#table(
  columns: (1fr, 2cm, 2cm),
  stroke: 0.5pt,
  inset: 6pt,
  fill: (x, y) => if y == 0 { luma(228) },
  [*Aufgabe*], [*BE*], [*erreicht*],
  [1 Elektrisches Feld und Kondensator], [25], [],
  [2 Magnetfeld und Induktion], [25], [],
  [3 Schwingungen und Wellen], [25], [],
  [4 Quanten], [25], [],
  [*Gesamt*], [*100*], [],
)

#v(0.5em)
#table(
  columns: 16,
  stroke: 0.5pt,
  inset: 4pt,
  align: center,
  fill: (x, y) => if y == 0 { luma(228) },
  [*ab %*], [95], [90], [85], [80], [75], [70], [65], [60], [55], [50], [45], [40], [33], [27], [20],
  [*Punkte*], [15], [14], [13], [12], [11], [10], [9], [8], [7], [6], [5], [4], [3], [2], [1],
)

#v(0.8em)
#hinweis[
  *Nach dem Korrigieren:* Jede Teilaufgabe mit weniger als der Hälfte der BE kommt mit einem Satz zur Ursache in die Fehlerliste (Rechenfehler, Einheit vergessen, Begründung fehlt, Formel nicht gekannt, TR-Dokumentation unvollständig). Die zugehörige Lektion steht in der Fehlerliste des Lernplans; dort noch einmal die Klausur-Kästen lesen und die passende Übungsaufgabe rechnen. Typische Lehrer-Abzüge: Regressionsgleichung mit TR-Buchstaben statt Formelzeichen, fehlende Einheiten an Achsen und Konstanten, „bestätigen" durch Einsetzen statt Herleiten, Fehlerbetrachtung ohne Zahlen, Vorzeichen ohne Begründung.
]
