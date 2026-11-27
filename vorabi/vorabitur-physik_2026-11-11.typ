= Korrektur Physik Vorabi 2026

== Aufgabe 1
=== 1.1 a)
Quecksilberdampflampe: Kein Schatten zu beobachten.\
Natriumdampflampe: Ein Schatten in Flammenform ist zu beobachten.\


=== 1.1 b)


$
  E = h dot f "         "
  c & = f lambda \
  f & = c/lambda \
$
$
  => E & = (h dot c)/lambda \
       & = (h dot c)/(589 "nm")
$

$=>$ Entspricht dem Übergang von $n=4$ nach $n=3$.

=== 1.1 c)
die Na-DL emittiert Licht der Wellenlänge $lambda approx 598$ nm. \
Die Na-Atome in der Flamme des Brenners werden zum Einen durch die Energie der Flamme angeregt und zum Anderen werden noch nicht angeregte Atome in der Flamme durch das Licht der DL angeregt. Die Abstrahlung bei beiden Abregungen erfolgt isotrop. Daher fehlt etwas von der Lichtmenge der Lampe auf dem Schirm und es entsteht ein Schatten.

=== 1.2 a)
Abb. 3 zeigt eine deutliche Emissionslinie von Na bei $lambda = 589$ nm. \
Na absorbiert und emittiert also bei dieser Wellenlänge. \
Abb. 5 zeigt eine Absorptionslinie bei dieser Wellenlänge.\
Es ist also möglich, dass Na in der Sternenatmosphäre enthalten ist.

=== 1.2 b)

$
  sin alpha & = a/l = a/sqrt(a^2 + d^2) "      " l^2= a^2 + d^2 \
   n lambda & = g a/sqrt(a^2 + d^2) \
            & "solve nach a liefert" \
          a & = d dot lambda dot sqrt(1/(lambda^2 dot n^2 - g^2)) \
            & = 0.143 m dot 589 dot 10^(-9) m dot (1)/((589 dot 10^(-9)m) dot 1^2 - (1.666 dot 10^(-6) m )^2) \
            & approx 0.054 m
$
5.4 cm $=>$ Abstand bestätigt.

$
                    alpha & = arctan a/d \
             n dot lambda & = g dot sin(arctan a/d) \
  arcsin (n dot lambda)/g & = arctan a/d \
                        a & = d dot tan(arcsin((n dot lambda)/g)) \
                          & = 14.3"cm" tan (arcsin((1 dot 589 dot 10^(-9) m )/(1.666 dot 10^(-6) m )))
$

=== 1.2 c)
$
      a_1 & = 143"mm" dot tan (arcsin((588.995"nm")/(1666"nm"))) \
          & = 54.0436"mm" \
          \
      a_2 & = 143"mm" dot tan(arcsin((589, 592"nm")/(1666"nm"))) \
          & = 54.1089"nm" \
          \
  Delta a & = a_2 - a_1 \
          & = 54.1089"nm" - 54.0436"nm" \
          & = 62.6 mu m >> 2 dot 2.4 mu m = 4.8 mu m \
$

$=>$ die beiden Linien können von Sensor getrennt aufgelöst werden.

=== 1.2 d)
Lässt man einen kleinen CCD-Chip auf einer Kreisbahn das Spektrum abfahren, so kann er dabei immer in der Brennebene liegen und muss nicht so groß sein.

#pagebreak()
== Aufgabe 2)
=== a)
#align(center)[#image("images/Fadenstrahlrohr.png", width: 90%)]

$
  U_B & : "Beschleunigungsspannung" \
  U_H & : "Heizspannung" \
    B & : "Magnetfeld"
$

$U_H$ führt zur Erhitzung der Glühwendel. Durch den glühelektrischen Effekt treten dort Elektronen aus. Die freien Elektronen werden dann durch die Spannung $U_B$ in Richtung der Lochblende beschleunigt. \
Elektronen, die das Loch in der Blende passieren, bilden den Elektronenstrahl.

=== b)
#let einzug(body) = block(above: 0.8em, below: 1.5em, inset: (left: 2em), body)

1. Messdaten in Tabelle in TR übernehmen.
$
  "Umrechnung:" && U_B & -> sqrt(U_B) \
        "Bsp.:" && 75V & -> sqrt(75) sqrt(V)
$

2. Diagramm anlegen:
#einzug()[
  x-Achse: $sqrt(U_B)$ in $sqrt(V)$\
  y-Achse: $r$ in $c m$
]

3. Erwartet wird $r tilde sqrt(U_B)$
#einzug()[
  $=>$ lineare Regression\
  $=> y = 0.13633 x - 0.01519$
]

4. Im physikalischen Kontext:
#einzug()[
  Der y-Achsenabschnitt ist im Verhältnis zur Abweichung der Messpunkte zur Ausgleichsgeraden klein und kann als vermutliche Messungenauigkeit vernachlässigt werden.

  $
    r (sqrt(U_B)) & = underbrace(0.1362 "cm"/sqrt(V), k) dot sqrt(U_B)
  $
]
$
              k & = sqrt((2 m e) / (e dot B^2)) quad             && | ()^2 \
            k^2 & = (2 m e) / (e dot B^2) quad                   && | dot B^2/2 \
  k^2 dot B^2/2 & = m^e/e                                        && | "KW" \
          e/m^e & = 2/(k^2 dot B^2) \
                & = 2/((0.1362 "cm"/sqrt(V))^2 dot (0.0025 T)^2) \
                & = 1.73 dot 10^11 C/"kg"
$

Literaturwert:
$
  e/m^e & = 1.759 dot 10^11 C/"kg"
$
$
  "Abweichung       "
  ((1.759 - 1.73) dot 10^11 C/"kg")/(1.759 dot 10^11 C/"kg") dot 100 % = 1.9%
$

=== c)
In der Röhre befindet sich ein dünnes Gas.\
Treffen die Elektronen des Strahls auf die Gasatome, können sie diese anregen.\
Bei der Abregung kann dann Licht ggf. im sichtbaren Wellenlängenbereich abgegeben werden.


