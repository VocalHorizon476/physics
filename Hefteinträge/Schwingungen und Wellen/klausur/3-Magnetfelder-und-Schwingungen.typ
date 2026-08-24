= 3. Klausur - Magnetfelder und Schwingungen

== 1. Das Massenspektrometer
*a)* Lorentzkraft, Kraft des elektrischen Feldes\
*b)*
$
    F_L & = F_Z \
  q v B & = m v^2/r \
      r & = m/(q B) v
$

*c)*
1. Werte in Tabelle im TR übernehmen
2. Diagramm anlegen\
x-Achse: $v (m/s)$\
y-Achse: $r (m m)$\
3. Der Punktverlauf entspricht augenscheinlich einer Geraden\
=> lineare Regression
$ y = 0.00127 dot x + 12.90 $
4. Im physikalischen Kontext:
$ r(v) = 0.00127 m m dot s/m dot v + 12.90 m m $
Im Ramen der Messungenauigkeiten verläuft der Graph der Regressionsfunktion durch den Ursprung. \
=> $r(v) = 1.27 dot 10^(-6) s dot v$

$
  r & = underbrace(m/(q B), k) dot v \
  k & = m/(q B) \
  m & = k dot q dot B \
    & = 1.27 dot 10^(-6) s dot 1.602 dot 10^(-19)C dot 1 T \
    & = 2.03 dot 10^(-25) k g
$

*d)* Da v im Wienfilter nicht von q abhängt, ändert sich dort nichts.\
Erhöht man q so ergibt sich an s $r tilde 1/q$ ein kleinerer Bahnradius.

#v(0.5cm)
== 2. Induktion
*a)* Skizze in der Arbeit vollkommen korrekt.

*b)* Die Änderung von $I_1$ hat zur Folge, dass sich das B-Feld in Spule 1 auch ändert. \
durch das sich ändernde B-Feld ändert sich der magnetische Fluss in Spule 2. \
Daher wird dort eine Spannung $U_2$ induziert.\

#pagebreak()
*c)* $ U_2 (t) & = U_(i n d) (t) \
        & = N_2 (d Phi)/(d t) \
        & = -N_2 A_2 d/(d t) B(t) \
        & = -N_2 A_2 B_0 dot 2 pi f dot cos(2 pi f dot t) \
        & = - 2 pi N_2 A_2 B_0 dot f dot cos (2 pi f dot t) $

*d)*
1. Werte in Tabelle im TR übernehmen
2. Diagramm anlegen\
x-Achse: $f (H z)$\
y-Achse: $hat(U)_2 (V)$\
3. Augenscheinlich verlaufen die Punkte einer Geraden.\
=> lineare Regression\
$ y = 0.1768 x + 0.62 $
Der y-Achsenabschnitt wird physikalisch nicht erwartet und kann auf Messungenauigkeiten zurückgeführt werden.
4. Im physikalischen Sachkontext:
$ hat(U)_2 (f) = underbrace(0.1768 "Vs", k) dot f $
$
    k & = 2 pi N_2 A_2 B_0 \
  B_0 & = k/(2 pi N_2 A_2) \
      & = (0.1768 "Vs")/(2 pi dot 1200 dot 0.0004 " m"^2) \
      & = 0.0586 "T"
$

*e)* $B tilde I$ und phasengleich.\
$Phi tilde B$, und auch phasengleich.\
$(d Phi)/(d t)$ ist um 90˚ nach links verschoben (sin -> cos)\
$U_(i n d) tilde -(d Phi)/(d t)$ und darum um 180˚ nach rechts verschoben.\
=> Gesamtverschiebung ist 90˚ nach rechts.

#v(0.5cm)
== 3. Schwingungen
*a)* Ansatz:
$
              y(t) & = y_0 sin(omega t + phi) \
         dot(y)(t) & = y_0 omega cos(omega t + phi) \
  dot.double(y)(t) & = -y_0 omega^2 sin(omega t + phi)
$
Einsetzen:
$
  -m y_0 omega^2 sin(omega t + phi) + D y_0 sin(omega t + phi) & = 0 \
$
=> soll für alle $t$ gelten:
$
  m omega^2 & = D \
    omega^2 & = D/m \
      omega & = sqrt(D/m) = 2 pi dot 1/T \
          T & = 2 pi sqrt(m/D)
$
Formel bestätigen, im Abitur Punktabzug.\
Die Formel konnte bestätigt werden.

*b)*
$
            y(t=0) & =^! y_0 \
  y_0 sin(0 + phi) & = y_0 \
          sin(phi) & = 1 \
            => phi & = pi/2 + n dot 2 pi \
           => y(t) & = y_0 sin(omega t + pi/2)
$

*c)* Die Rückstellkraft ist nicht proportional zur Auslenkung.\
=> Die DGL beschreibt keine harmonische Schwingung\
=> Ansatz $y(t) tilde sin(omega t + phi)$ ist ungeeignet, um die DGL zu lösen.\
$
  F_m + F_("spann") & = 0 \
        F_("spann") & != D x \
                    & = D_1 x + D_2 x^2 + D_3 x^3 +...
$

*Beispielansatz* z.B.:
$ y(t) & = sum_i D_i sin(omega_i t) $
