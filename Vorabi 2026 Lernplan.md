# Vorabi 2026 – Tracking (interne Datei für Claude)

Zweck: Fortschritt, Status pro Thema, Fehlerliste, Merkzettel. Das Lernen selbst läuft im Chat (Erklärung → Checkfragen → Aufgaben → Korrektur). Arthur liest diese Datei nicht. Stand: 8.11.2026.

## Eckdaten

| Was | Wann | Hinweis |
|---|---|---|
| **Vorabi Physik (LK)** | **Mi 11.11.** | Klausurenplan Leiste 1 + Kalender |
| **Vorabi Mathe (LK)** | **Di 17.11.** | Klausurenplan Leiste 3 + Kalender (Themenblatt sagt 11.11. – alter Stand) |
| **Vorabi Informatik (LK)** | **Fr 20.11.** | Klausurenplan Leiste 2 + Kalender |
| Vortrag Seminarfach | Mi 4.11. | Tag reduziert (1,5 h) |
| Englischarbeit | Do 5.11., 1./2. Std. | keine Vorbereitung im Plan, Nachmittag normal |
| Vorabi Deutsch (P4) | Fr 13.11., vormittags | keine Vorbereitung im Plan, Nachmittag Mathe |
| Nachschreibtermin 7.11. | entfällt | nur Ersatztermin, nicht relevant |
| Studientag (kein Unterricht) | Do 12.11. | voller Mathe-Tag |

Formate:

- **Physik Abitur eA 2025:** 300 min inkl. 30 min Auswahl, 4 Aufgaben à 40 BE, 3 bearbeiten, 120 BE. 2021–24: Aufgabe I + II a/b à 72 BE (3 Teilaufgaben à 24 BE). Hilfsmittel: TR + Formelsammlungen. Vorabi vermutlich kürzer, Stil gleich.
- **Mathe Abitur eA 2025:** 330 min, 100 BE. Teil A hilfsmittelfrei (30 BE: P1–P4 + 2 aus Q1–Q6, Abgabe nach 110 min), Teil B mit CAS (70 BE: Analysis 30, Stochastik 20, Geometrie 20). Notenschlüssel: 5 NP ab 45, 10 NP ab 70, 15 NP ab 95. Vorabi laut Themenblatt: Zeiten wie Abitur, keine Auswahl, alle Gebiete gleich gewichtet, jeder Teil auch ohne Rechner abfragbar.
- **Informatik Abitur eA:** 300 min, Block 1 (Algorithmen/Datenstrukturen/OOP) + Block 2 (Kryptologie, Automaten, Datenbanken ...).

Zeitbudget (Startwert): Schultag 2,5–3 h, 4.11. 1,5 h, Wochenende 4–5 h, Tag vor Klausur max. 2 h. Physik ≈ 42 h, Mathe ≈ 20 h, Informatik ≈ 5 h.

Methode pro Thema (im Chat):
1. Erklärung in Schritten, Notation wie in der Mappe. Versuche: Aufbau → Messung → Schluss.
2. 2–3 Checkfragen, Arthur antwortet, Korrektur.
3. 1–3 Aufgaben (Mappen-Klausur, LEIFI, Abitur), Arthur rechnet, Korrektur, Fehler → Fehlerliste.
4. Merkzettel (Formeln, Skizzen-Beschreibung, typische Frage) → unten in diese Datei. Am 10.11. und 16.11. als Wiederholung wieder ausspielen.
4c. **Pro Lektion eine HTML-Seite** in `Mappen/Physik/Lektionen/NN-Thema.html` (Arthurs Wunsch, Vorbild „Physik-Visualisierer & Analogie-Trainer"; Skill nirgends auffindbar, daher eigenes Muster): selbstständige Datei ohne Abhängigkeiten, hell/dunkel, Abschnitte = Lernziele → Theorie mit interaktiven Visualisierungen (Canvas/SVG, Slider) → Analogie-Karten + Quiz mit Feedback → Checkfragen/Aufgaben mit eingeklappten Lösungen → „Nicht in FS" → Merksätze + Fortschritts-Checkboxen (localStorage). Formeln als echtes LaTeX über KaTeX (lokal in `Lektionen/katex/`, Auto-Render mit `\(…\)` inline in `span.f` und `\[…\]` in `div.formula`; Arthurs Wunsch 27.10., alle fünf Lektionen umgestellt). Neue Lektionen direkt in LaTeX schreiben. Prüfen im Browser-Pane über `preview_start physik-lektionen` (Server in `.claude/launch.json`, Port 8765), da file:// als Snapshot ohne relative Pfade lädt. Lektion 1: `01-Elektrostatik-I.html`. Scroll-Container (`.formula`, `.f.wide`, Tabellen unter 760 px) brauchen `position: relative`, sonst schiebt das versteckte KaTeX-MathML die Seite auf dem Handy in die Breite (seit 2.11. in allen Lektionen). Im Browser-Pane läuft `requestAnimationFrame` nicht, Canvas mit reiner rAF-Animation wirken dort leer: zum Prüfen rAF per `setTimeout` ersetzen. 2.11.: bekannte Sachfehler aus dem Review in L2, L4–L6, L8–L11 korrigiert (nur Fehler, nichts umgebaut), Merkblatt angeglichen.
4b. **Nach jeder Lektion** `Vorabi 2026 Auswendig Physik.typ` (Schule-Ordner) ergänzen: nur, was NICHT in der Pool-Formelsammlung steht (Begriffe, Regeln, Umformungen, Herleitungen, Versuchs-Auswertungen, Methodik) + Fundort-Liste für das, was drinsteht. Danach `typst compile` zur Kontrolle (Ausgabe ins Scratchpad, dann löschen). Für Mathe später eigene Datei gleichen Musters.
5. Thema nach 1,5-facher Planzeit nicht verstanden → stoppen, anders erklären, Aufgabenblock des Tages streichen. Nie Verständnis gegen Aufgaben tauschen.
Grundregeln: Physik erst verstehen (26.10.–5.11.), dann Abituraufgaben (6.–9.11.). Mathe bis 11.11. nur 3 × 45 min Wachstum. Informatik erst 18./19.11. Abends Rückmeldung (geschafft / zu viel / zu wenig) → Rest umplanen.

---

## Status pro Thema

Status: offen → erklärt → geübt → sicher. Notiz: Lücken, Fehler, was Arthur schon konnte.

### Physik (aus der Mappe; Vorabi = Mappe, nicht mehr)

| Thema | Status | Datum | Notiz |
|---|---|---|---|
| Elektrostatik: Ladung, Polarisation, Coulomb-Gesetz | erklärt | 26.10. | Lektion 1 im Chat, Checkfragen/Aufgaben A1, A2 gestellt |
| Feldlinien, Feldstärke E = F/q, homogenes Feld E = U/d | erklärt | 26.10. | inkl. Pendel-Messung E(U), E(d) ~ 1/d, Einheiten V/m = N/C |
| Potential, Spannung, Energie W = q·U | erklärt | 27.10. | Lektion 2 HTML (U = W/q, eV, Potenzial, v = √(2qU/m)) |
| Bewegung geladener Teilchen im E-Feld (Beschleunigung, Ablenkparabel) | erklärt | 27.10. | Lektion 2: Kinematik vs. Energie, Ablenkröhre mit Bahngleichung, Klausur 2 Aufg. 3 als Musterlösung, Millikan-Trainer |
| Messgenauigkeit, geltende Ziffern, Regression mit TR | erklärt | 27.10. | L1 Methodik + L2 Potenzregression; Lehrer will physikalische Begründung des Regressionstyps |
| Kondensator: C = Q/U, C = ε₀·ε_r·A/d, Dielektrikum | erklärt | 27.10. | Lektion 3 HTML: Herleitung über σ = ε₀E, Dielektrikum mit Gegenfeld, zwei Fälle, teilgefüllt = parallel |
| Energie W = ½·C·U², Parallel-/Reihenschaltung | erklärt | 27.10. | Lektion 3: Fläche unter Q-U, Herleitungen, Klausur 2 Aufg. 4 |
| Lade-/Entladekurve, τ = R·C, DGL, Halbwertszeit, Q = ∫I dt | erklärt | 27.10. | Lektion 3: DGL per Maschenregel, RC-Simulation, Regression → e-Form, Klausur 2 Aufg. 1, Abitur 2016 I + 2023 IIa aus der Mappe |
| Fadenstrahlrohr (Aufbau, Kreisbahn, r ~ √U_B, e/m) | erklärt | 27.10. | Lektion 4 HTML: Simulation, e/m-Herleitung, Hausaufgabe aus dem Heft |
| Magnetfeld: Ørsted, Leiter/Spule, Stromwaage F = I·l·B | erklärt | 27.10. | Lektion 4: Konventionen (Elektronenfluss, linke Hand) vorangestellt; Stromwaage-Regression mit Heft- und Abiturdaten |
| Flussdichte B, Spule B = μ₀·n·I/l, Helmholtzspule | erklärt | 27.10. | Lektion 4: Spulenrechner, Abitur 2021 B(r)-Auswertung mit zwei Methoden, Abitur 2022 k_exp vs k_theo |
| Lorentzkraft F = q·v·B, Kreisbahn r = m·v/(q·B) | erklärt | 27.10. | Lektion 4: Drei-Finger-Trainer, Herleitung aus F = BIl |
| Wienfilter, Massenspektrometer, Hall-Effekt | erklärt | 27.10. | Lektion 4: drei Simulationen, Klausur 3 Aufg. 1, Abitur 2024 II 3 mit EWH |
| Magnetischer Fluss, Induktionsgesetz, Generator, Lenz | erklärt | 27.10. | Lektion 5 HTML: Fluss-Widget, Dreieck→Rechteck, Generator-Animation, Lenz-Trainer, fallender Magnet (Abitur 2023 I 2.3) |
| Selbstinduktion, Ein-/Ausschaltvorgang, τ = L/R, W = ½·L·I² | erklärt | 27.10. | Lektion 5: RL-Simulation, Heft-Regression (τ = 48 ms, L = 4,8 H), DGL-Nachweis |
| Oszilloskopbild lesen | erklärt | 27.10. | Lektion 5 Abschnitt 7: V/Div, s/Div, Halbwertszeit → L bzw. C |
| Harmonische Schwingung, Feder-Masse-Pendel, Zeigerformalismus | erklärt | 29.10. | Lektion 6 `06-Schwingungen.html`: Begriffe, Heft-Versuch, DGL, Energie, Fadenpendel, Zeiger, Dämpfung, Resonanz |
| LC-Schwingkreis (Thomson, Heft-Versuch L = 0,133 H) | erklärt | 29.10. | steht im Heft-PDF S. 13–15 (vorher fälschlich als „nicht in der Mappe" geführt); in Lektion 6 Abschnitt 9 |
| Wellen: λ, f, c, Phase; Huygens, Reflexion, Brechung | erklärt | 29.10. | Lektion 7 `07-Wellen-I.html`: Wellenmaschine, Wellenfunktion, Zeigerkette (Heft-Aufgabe 3), Huygens-Feld, Snellius; 4.11.: 16 statische Skizzen ergänzt (Log) |
| Stehende Wellen (Ultraschall), Polarisation | erklärt | 29.10. | L7: Interferenz/Zeigeraddition, Reflexion, stehende Welle, Ultraschall-Messung simuliert, Malus mit Heft-Sinusregression, Abitur 2025 Aufgabe 1 komplett mit EWH |
| Interferenz, Einzelspalt, Doppelspalt (Herleitung), Gitter | erklärt | 30.10. | Lektion 8 `08-Wellen-II.html`: exakt + Näherung mit Herleitung, Intensität, Ultraschall 2022, N-Spalt mit Zeigerpolygon, Einzelspalt (Blatt 7.3.4); 5.11.: 14 statische Skizzen ergänzt (Log) |
| Michelson-Interferometer | erklärt | 30.10. | L8 Abschnitt 1 mit Zähl-Simulation, Abitur 2021 IIa 2 (Michelson + CD) |
| Wellenlängenbestimmung (LED), Fehlerbetrachtung | erklärt | 30.10. | L8: objektiv/subjektiv, Heft-Messwerte, Fehler-Rechner (Heft-Methode und EWH-Methode), Abitur 2021/2022 gA/2023 |
| Photoeffekt, Gegenfeldmethode, E_kin = h·f − W_A | erklärt | 30.10. | Lektion 9 `09-Quanten-I.html` Abschnitte 1–6: Hallwachs, vier Widersprüche zum Wellenmodell, Gegenfeld-Simulation, Heft-Regression (h = 5,73·10⁻³⁴ Js, −13,6 %, Heft-Schreibfehler 1,993 V markiert), Materialvergleich; Abitur 2018 II 1+2, 2024 I 3 |
| h-Bestimmung mit LEDs, Elektronenvolt | erklärt | 30.10. | L9 Abschnitte 3, 7–10: eV, Bändermodell, Kennlinie U_s = −B/A, Heft-Regression (7,89·10⁻³⁴ Js, +19 %, grün als Ausreißer), Abitur 2021 IIa 3 (6,76·10⁻³⁴ Js), Röntgen 2017 II 3 / 2019 II 3 |
| de Broglie, Elektronenbeugung, Bragg | erklärt | 30.10. | Lektion 10 `10-Quanten-II.html` Abschnitte 1–4: Bragg-Simulation, Heft-Daten (ODS) live bis λ = h/p (h_exp = 7,04·10⁻³⁴ Js), de-Broglie-Rechner, Tonomura-Simulation; Abitur 2021 I 3, 2024 I 2, 2025 Aufg. 3 |
| Mach-Zehnder, Delayed Choice, Wahrscheinlichkeitsdeutung | erklärt | 30.10. | L10 Abschnitte 5–6: Einzelphotonen-Simulation mit Delayed-Choice-Statistik, Kopenhagen, Komplementarität, Unschärfe |
| Zustandspräparation, Komplementarität, Verschränkung, Unschärfe | erklärt | 30.10. | L10 Abschnitt 7 (Heft-Wortlaut, 2s→1s Zwei-Photonen-Argument, Hinweis: keine Informationsübertragung) |
| Wasserstoffspektrum, Absorptionsspektren | erklärt | 30.10. | L10 Abschnitte 8–10: Bohr-Blatt, Niveau-Simulation H/Na, Heft-Messung mit Fehlern, Abitur 2023 IIb 3 und 2025 Aufg. 4, Potentialtopf-Simulation · L11 vertieft: Bohr-Blatt Schritt für Schritt, Serien, Schemata, Absorption, Spektrometer; Abitur 2016 II 2, 2019 I 2, 2020 I 3, 2023 IIb 3, 2025 Aufg. 4 mit Lösungen |
| Unendlich tiefer Potentialtopf | erklärt | 30.10. | Lektion 11 `11-Quanten-III.html` Abschnitte 10–12: Herleitung in vier Schritten, FS-Schrödingergleichung, Schießverfahren, \|Ψ\|², Topf gegen Atom; Abitur 2020 I 3.1 |

### Mathe (Vorabi-Blatt)

| Thema | Status | Datum | Notiz |
|---|---|---|---|
| Differentialrechnung, ganzrationale Funktionen | offen | | laut Arthur sicher |
| Steckbrief, Trassierung, Gauß | offen | | |
| Exponentialfunktionen, e, ln | offen | | |
| Ketten-/Produktregel per Hand | offen | | |
| **Wachstumsmodelle, DGL, Umkehrfunktion** | offen | | Lücke (Unterricht verpasst) |
| Integral, Flächen, Hauptsatz, hilfsmittelfrei | offen | | |
| Rotationskörper | offen | | |
| Scharen, Ortslinien | offen | | |
| Ober-/Untersumme, uneigentliche Integrale | offen | | |
| Bedingte W., Vierfeldertafel, Baum | offen | | |
| Binomialverteilung, σ-Regeln, Prognoseintervall | offen | | |
| Konfidenzintervall | offen | | |
| Auslastungsmodell, 3-mal-mindestens | offen | | |
| Normalverteilung | offen | | |
| Kombinatorik, beschreibende Statistik | offen | | |
| Ebenen, Lagebeziehungen, Winkel, Abstände | offen | | |
| Licht und Schatten | offen | | |

### Informatik (Plattform, Login nur durch Arthur)

| Thema | Status | Datum | Notiz |
|---|---|---|---|
| Automaten, formale Sprachen, Kellerautomat | offen | | |
| Kryptologie (Substitution, Vigenère, asymmetrisch, Häufigkeitsanalyse) | offen | | |
| Datenbanken / SQL | offen | | |
| Datenstrukturen (Stapel, Schlange, Reihung, Binärbaum, Huffman), OOP, Struktogramm | offen | | |

---

## Fehlerliste

Format: Datum · Fach · Fehler · Ursache · Merksatz

Aus Klausur 2 (13.11.2025, Kondensatoren, 50,5/65 = 11 NP; Datei `Arbeiten/12.1/Physikarbeit Nr. 1 - (12.1).pdf`, enthält auch den Bewertungsbogen):
- 13.11.25 · Physik · v_x = „1,624 m/s" statt 1,62·10⁷ m/s · Zehnerpotenz im TR verloren · Größenordnung prüfen (Elektronen: 10⁶–10⁷ m/s)
- 13.11.25 · Physik · Regression nur mit „Punkte liegen auf einer Kurve" begründet · Lehrer erwartet physikalische Begründung (erwarteter Zusammenhang/Exponent aus der Theorie) · Erst Theorie, dann Regressionstyp
- 13.11.25 · Physik · Einheit der Regressionskonstante falsch (V/cm statt cm·V^0,5) · Einheiten nicht aus der Formel abgeleitet · Konstante so bemessen, dass die Gleichung dimensionsrichtig ist
- 13.11.25 · Physik · U_B aus der Regressionskonstante nicht bestimmt (0/3) · Konstante nicht mit der Theorie verglichen · Schritt 5 der TR-Doku: Konstante deuten → gesuchte Größe
- 13.11.25 · Physik · Diagramm „reicht nicht" (nur Achsen) · Skizze mit Punkten und Verlauf fehlte
- 13.11.25 · Physik · Gasatmosphäre mit ε_r/Kapazität erklärt (0/3) · falsches Modell · Stöße bremsen Elektronen → längere Zeit im Feld → stärkere Krümmung, Bahn kürzer
- 13.11.25 · Physik · Beispielrechnung bei Umrechnung U→I fehlte; Regression auf U-Werten, aber als I(t) bezeichnet · Doku-Schritt 1 unvollständig
- 13.11.25 · Physik · Q = I₀·τ ohne Begründung („Ansatz unbewiesen") · Q = ∫I dt herleiten (Lektion 3)
- 13.11.25 · Physik · f(C) für teilweise mit Öl gefüllten Kondensator nicht gefunden (0/3) · Parallelschaltung zweier Teilkondensatoren nicht erkannt (Lektion 3)
- 13.11.25 · Physik · „mit solve im TR" ohne „nach C_ges" · Dokumentation unvollständig

Aus 2025 A2 2.1 (6.11.2026, im Chat):
- 6.11. · Physik · „Stromquelle“ statt Spannungsquelle; Widerstand im Schaltplan vergessen · Funktion von R nicht klar (begrenzt I₀ = U₀/R, bestimmt τ = RC) · Ladeschaltung = Quelle, Schalter, R, C, A in Reihe; V parallel zu C
- 6.11. · Physik · t-I-Ausgleichskurve nach dem letzten Messpunkt waagerecht bei 15 µA weitergezeichnet · Grenzverhalten nicht bedacht · Ladestrom → 0 asymptotisch, nie konstant ≠ 0
- 6.11. · Physik · „Die Spannung ist im Kondensator“, Schritt U_R = U₀ − U_C fehlte · Kette nicht vollständig ausgeschrieben · Q steigt ⇒ U_C = Q/C steigt ⇒ U_R = U₀ − U_C sinkt ⇒ I = U_R/R sinkt
- 6.11. · Physik · „Erläutern“ mit Material ohne Werte aus den Diagrammen (2.1c ≈ 3/5) · Operator nicht genutzt · Bei Material immer Zahlen nennen (0 → 2,0 V; 98 µA → 0; I₀ = U₀/R = 100 µA)

Aus 2025 A2 2.2–2.3, 2022 I.2, 2016 I.2 (7./8.11.2026, im Chat):
- 7.11. · Physik · Regressionstyp mit „augenscheinlich“ bzw. „wird erwartet“ begründet (2025 A2 2.2a, 2022 I.2.3, 2016 I.2.3; 4×) · Theorie nicht hingeschrieben · Schritt 3 = Formel aus der Theorie hinschreiben, Exponent ablesen
- 7.11. · Physik · Einheit der Konstanten mit dem TR-Exponenten bzw. b = 1 gebildet (kV/cm statt kV/cm²; cm/V statt cm/√V) · [a] = [y]/[x]^b mit dem theoretischen b
- 7.11. · Physik · e-Form fehlte, I₀ und τ nicht mit U₀/R und RC verglichen (2025 A2 2.2a ≈ 4/6) · Konstante deuten = mit dem Theorie-Formelblock gleichsetzen
- 7.11. · Physik · 10⁶ statt 10⁻⁶ bei µF; Prozentabweichung auf den Messwert bezogen (2.2c ≈ 4/6) · Abweichung immer auf den Sollwert (Herstellerangabe) beziehen
- 7.11. · Physik · Skizze fehlte, „Exponent halbiert sich“, Fläche Q = C·U₀ bleibt nicht erkannt (2.2d ≈ 3/5) · anderes R ändert I₀ und τ, nie Q
- 7.11. · Physik · Antwortsatz fehlte (2.2b ≈ 4/5)
- 7.11. · Physik · 2022 I.2.1: Superposition nicht genannt, y(t) statt y(x), g als Kraft bezeichnet (≈ 4/6) · x = v₀t und y = ½at² getrennt, dann t = x/v₀ einsetzen
- 8.11. · Physik · 2016 I.2.1: U_B und Helmholtzspulen fehlten im Schaltbild; „Vakuum“ statt Gas unter geringem Druck (≈ 4/6) · Fadenstrahlrohr: Glühwendel (U_H), Anode (U_B), Helmholtzspulen, Gasfüllung macht den Strahl sichtbar
- 8.11. · Physik · 2016 I.2.2: „Zentrifugal- und Lorentzkraft wirken“ (≈ 1–2/4) · Lorentzkraft IST die Zentripetalkraft; v ⊥ B; |v| konstant, weil F_L ⊥ v
- 8.11. · Physik · k aus der freien Potenzregression übernommen (a bei b = 0,48) · bei festem b: k = Mittelwert von y/x^b oder Linearisierung (beide Verfahren laut EWH möglich, sauber dokumentieren)
- 8.11. · Physik · 2021 I.1.3: Schritt 3 wieder „augenscheinlich … asymptotisch“, „−0,5 wird erwartet“ ohne Thomson (5×!); Einheit Hz/µF statt Hz·√µF; Deutung fehlte (≈ 3/6) · Thomson FS S. 32 hinschreiben; bei negativem b wandert die x-Einheit in den Zähler; k = 1/(2π√L) ⇒ L ≈ 36 mH
- 8.11. · Physik · 2020 II.2.1: sin α = nλ/g aus der FS zitiert statt hergeleitet, kleines Dreieck (Δs = g·sin α, Lot) fehlte; „monochromatisch“, „objektiv“ fehlten (≈ 9/13) · Herleiten = Formel begründet aufbauen, FS nur als Ziel; „für ein Maximum gilt Δs = nλ“
- 9.11. · Physik · 2024 I.3.1: Skizze ohne Voltmeter, Vakuumröhre, Polung; „induzierte“ Gegenspannung; E_kin,max = e·U₀ und v = √(2eU₀/m_e) nicht hingeschrieben, nur in Worten (≈ 3/6) · Verfahren immer mit Gleichungskette beenden; Skizze: A + V + Polung
- 10.11. · Physik · 2021 I.3.3 Herleitung λ: Aufbau richtig (de Broglie, Energieansatz, p = m·v), aber v falsch umgestellt (√(m/(2eU)) statt √(2eU/m)) und trotzdem das Zielergebnis hingeschrieben; keine Begründungssätze (≈ 2/4) · Umstellen Zeile für Zeile oder mit solve; m = √(m²) unter die Wurzel ziehen; zu jeder Gleichung ein Halbsatz
- 10.11. · Physik · 2024 I.1.1: longitudinal und transversal vertauscht; c = λ·f nur ungefähr begründet („Welle kommt am Ursprungsort an“) (≈ 1,5/5) · Merkhilfe: longitudinal = längs, transversal = quer; in der Zeit T läuft die Welle um λ weiter, c = λ/T = λ·f
- 10.11. · Physik · 2023 I.2.2: f nicht ausgerechnet (nur 1/100 ms); Vorzeichenwechsel mit „Richtung des Feldes ändert sich“ begründet statt mit der Änderungsrate (Steigung von B); konstante Steigung → konstante Spannung (Rechteck) und Frequenzverdopplung fehlten (≈ 3/10) · U_ind ~ −Ḃ: Steigung des B-Graphen ablesen, nicht den Wert von B; Vorzeichen von B wechselt beim Nulldurchgang, dort bleibt U_ind gleich
- 10.11. · Physik · 2022 IIa.2.1: Frequenz als „wie schnell“ statt Anzahl Schwingungen pro Zeit (f = 1/T); harmonisch als „gleichmäßig, ungedämpft“ statt Rückstellkraft ~ Auslenkung (F = −D·s) bzw. sinusförmig (≈ 2/4) · Definitionen: f = n/t; harmonisch = lineares Kraftgesetz = Sinus im t-s-Diagramm

---

## Merkzettel (aus den Chat-Lektionen, für Wiederholung am 10.11./16.11.)

**FS-Seitenindex (Formelsammlung.pdf, per pdftotext geprüft 10.11.; Arthur will zu jeder Formel die Seite):** S. 15 Zentripetalkraft, Hooke · S. 18 E_kin, Lageenergie · S. 20 Impuls p = m·v · S. 21 Schwingung (f = 1/T, harmonisch) · S. 22 Federpendel, Fadenpendel, c = λ·f, Wellenfunktion · S. 23 stehende Wellen · S. 24 I = Q/t, R = U/I · S. 25 ΔE = q·U, Coulomb · S. 26 E-Feld, Potenzial · S. 27 X_C, X_L · S. 28 Kondensator: C, Energie, Laden/Entladen · S. 29 Reihen-/Parallelschaltung C, B, Lorentzkraft · S. 30 Hall, magnetischer Fluss, Induktionsgesetz · S. 31 Spule: L, Selbstinduktion, Energie · S. 32 Schaltvorgänge Spule, Thomson · S. 33 c elektromagnetisch · S. 34 Reflexion, Brechung · S. 35 Doppelspalt, Gitter, Einzelspalt, Bragg · S. 36 Polarisationsfilter (Malus), Photon, Fotoeffekt, de Broglie · S. 37 Unbestimmtheit, Schrödinger, Frequenzbedingung, H-Spektrallinien · S. 38 Energieniveaus H, Potenzialtopf.

- (leer)

---

## Zeitplan

### Woche 1: Physik verstehen (Felder)

**Mo 26.10. – 2 h – Elektrostatik I**
- [ ] Ladung, Polarisation, Coulomb-Gesetz, Feldlinien, Feldstärke E = F/q, homogenes Feld E = U/d (Mappe Elektrostatik)
- [ ] Checkfragen + 2 Aufgaben

**Di 27.10. – 3 h – Elektrostatik II + Kondensator I**
- [ ] Potential, Spannung, Energie, Bewegung im E-Feld (Beschleunigung, Ablenkparabel im Plattenkondensator)
- [ ] Kondensator: C = Q/U, Plattenkondensator, Dielektrikum, Energie
- [ ] 2 Aufgaben Bewegung im E-Feld + 2 Aufgaben Kapazität
- [ ] Lehrer-Klausur Nr. 1 Elektrostatik: `Arbeiten/12.1/Physikarbeit Nr. 1 - (12.1).pdf` (Coulomb F ~ 1/d², Q = ±12,18 nC; Millikan-artig q(U) = m·g·d/U → Δq ≈ e, Hypothese Ladungsquantisierung; „möglichst genau" = Mittelwert). Lösung: letzte Seiten der Elektrostatik-Mappe.

Inhalt der Elektrostatik-Mappe (gelesen 26.10.): Fehlerbalken/Ausgleichsgeraden max./min. Steigung; geltende Ziffern; TR-Dokumentationsschema (Werte → Diagramm mit Einheiten → Regression begründen → physikalische Formel mit Einheiten → Konstante interpretieren); Ladung/Polarisation/Influenz; Grießkornbilder + Regeln; F ~ Q → E = F/q; Vergleich E-/B-Feld; Punktladung/Dipol, 1/r² über Feldliniendichte; F = E·q ↔ F = m·g; Coulomb; Pendel-Messung E(U), E(d) → E = U/d; Elektrofeldmeter (Exkurs); Bewegung im Feld (kinematisch + Energie, W = q·E·s, W(d) = q·U, v = √(2qU/m)); schwebendes Teilchen q = −m·g·d/U; Teilchenbeschleuniger 29 kV → 3,2·10⁷ m/s; Elektronenstrahlablenkröhre (U_H, U_B, U_A; Parabel s_y = ¼·U_A/(d·U_B)·s_x²).

**Mi 28.10. – 3 h – Kondensator II**
- [ ] Lade-/Entladekurve, τ = R·C, DGL lösen, Halbwertszeit, Q als Integral
- [ ] Lehrer-Klausur in `(12.1) Elektrodynamik.pdf`: Aufgaben 1.1–1.4 (Öltank) und 3.1–3.4 (Aufbaukondensator), EWH im PDF
- [ ] Fehlerliste anlegen

**Do 29.10. – 3 h – Magnetfeld + Lorentzkraft**
- [ ] Ørsted, Spule, Stromwaage, Flussdichte, Lorentzkraft, Spule quantitativ
- [ ] Fadenstrahlrohr komplett herleiten; Lehrer-Klausur Aufgabe 2.1–2.4
- [ ] **Mathe 45 min: Wachstum 1** (exponentiell + begrenzt, DGL-Nachweis; Buch Qualifikationsphase Kap. 3.5/3.6, S. 78–88)

**Fr 30.10. – 3 h – Anwendungen Lorentzkraft**
- [ ] Helmholtzspule, Wienfilter, Massenspektrometer, Hall-Effekt
- [ ] Mappen-Klausur `3-Magnetfelder-und-Schwingungen.pdf` Aufgabe 1 (Massenspektrometer)
- [ ] 2 Aufgaben „Bewegte Ladungen in Feldern"; Rechte-Hand-Regeln

**Sa 31.10. – 5 h – Induktion komplett**
- [ ] Fluss, Induktionsgesetz (B ändert sich / A ändert sich), Generator, Lenz
- [ ] Selbstinduktion, Ein-/Ausschalten, τ = L/R, Energie; Beispielaufgaben aus dem Heft
- [ ] Mappen-Klausur Nr. 3 Aufgabe 2 (Induktion) + Oszilloskopbild
- [ ] **Mathe 45 min: Wachstum 2** (logistisch, Wendepunkt, Umkehrfunktion; `Wachstumsmodelle.typ`)

**So 1.11. – 4 h – Schwingungen (L6) durcharbeiten + Wellen I (L7)**
- [ ] L6 im Browser durchgehen, Aufgaben A1–A6 rechnen, Klausur 3 Aufgabe 3 und Abitur 2022/2023 Aufgabe 2 nachrechnen
- [ ] L7 Wellen I: λ, f, c, Phase/Zeiger; Huygens, Brechung, Interferenz, Reflexion, stehende Wellen (Ultraschall), Polarisation (Abitur 2025 Aufgabe 1)
- [ ] **Stand-Check:** Anteil erledigter Blöcke. Unter 70 % → Woche 2 umbauen. Abend frei.

### Woche 2: Wellen, Quanten, Abituraufgaben

**Mo 2.11. – 3 h – Wellen II**
- [ ] Interferenz, Doppelspalt-Herleitung, Gitter, Einzelspalt
- [ ] Michelson, LED-Wellenlängenversuch, Fehlerbetrachtung
- [ ] 2 Aufgaben Beugung/Interferenz

**Di 3.11. – 3 h – Quanten I**
- [ ] Photoeffekt, Gegenfeldmethode, h mit LEDs, eV
- [ ] de Broglie, Elektronenbeugung, Bragg
- [ ] **Mathe 45 min: Wachstum 3** – Abitur 2018 CAS 1B (Modelle A–D, DGL, logistisch), Lösung `2018MatheCASEALehrer.pdf`; Rest am 12.11.

**Mi 4.11. (Vortrag Seminarfach) – 1,5 h – Quanten II**
- [ ] Mach-Zehnder, Delayed Choice, Wahrscheinlichkeitsdeutung, Zustandspräparation, Komplementarität, Verschränkung, Unschärfe (milq-Material als Quelle)

**Do 5.11. – 3 h – Quanten III + Wiederholung Felder**
- [ ] Wasserstoffspektrum, Absorptionsspektren, Potentialtopf
- [ ] Formelsammlung Kap. 3.2–3.4: jede benutzte Formel zuordnen
- [ ] Elektrik aus dem Kopf: Fadenstrahlrohr, Kondensator-Entladung, Induktionsgesetz herleiten (Abfrage im Chat)

**Fr 6.11. bis Di 10.11.: ersetzt durch `Mappen/Physik/Lektionen/00-Vorabi-Aufgabenplan.html`** (gebaut 6.11.). Dort stehen alle 56 Aufgaben mit Modus, Minuten, Links zu Aufgabe/EWH/Lektion, 30 Regressions-Drills (D1–D30) und die Tabelle aller 61 eA-Teilaufgaben 2016–2025 mit drin/Grenzfall/raus. Abhaken macht Arthur dort (localStorage); hier nur VOLL-Ergebnisse und Fehler eintragen.
- Fr: nur 2025 A2 2.1a–c geschafft (im Chat, ≈ 10/13 BE). Rest vom Freitag in den Samstag verschoben.
- Sa (umgeplant 7.11., Arthur: „MUSS heute mit Elektrostatik und -dynamik fertig werden“, ≈ 4 h 10 + Pausen): 4 Konzept-Checks (K1 Kondensator, K2 Bahnkurven, K3 Magnetfeld, K4 Induktion; aufklappbare Fragen auf der Planseite) + **2025 A2 Rest 2.2a–2.3a VOLL** + 2022 I.2, 2016 I.2, 2017 I.3, 2020 II.3 (SKIZZE+REG, Herleitungen komplett) + 2023 I.2 SKIZZE + Heft H6 (Ausschalten Spule, REG). Kür 11 E-Lehre-Aufgaben als LESEN (3 min); was offen bleibt, am Di vor Block 4.
- Sa (Ergebnis): 2025 A2 komplett (2.2a ≈ 4/6, 2.2b ≈ 4/5, 2.2c ≈ 4/6, 2.2d ≈ 3/5, 2.3a erklärt), 2022 I.2 (2.1 ≈ 4/6, 2.3 ≈ 5/9, 2.4 erklärt, 2.2 nicht abgegeben), 2016 I.2 (2.1 ≈ 4/6, 2.2 ≈ 1–2/4, 2.3 Regression ≈ 3/6, e/m offen). Block 3/4 (Magnetfeld, Induktion) nicht geschafft.
- **Ab So 8.11. rationiert** (Arthur: „Wir haben nur noch drei tage … Wir müssen weiter rationieren“; sein Vorschlag: Erklär-Aufgaben von Claude erklären lassen, wichtige selbst). Modi: SELBST (Rechnen, Herleiten, Regression; Foto, Korrektur nach EWH) und ERKLÄRT (Lösung in der Lektion oder im Chat „erklär …“). Arthurs Tempo ≈ 1,5× Planzeit. **So-Nachmittag, Arthur: „du denkst bei allem, dass es viel weniger Zeit in Anspruch nimmt, als dass es die realität ist“ → ab jetzt doppelte Zeiten rechnen.**
- So (≈3 h 50): Rest 2016 I.2.3 (e/m), K3, 2017 I.3 (3.1/3.2 SELBST, 3.3 D11), 2020 II.3 E, K4, 2023 I.2 E; 2021 I.1.3 SELBST, 2022 IIa.2/2020 II.1/2023 IIa.2 E; 2025 A1 1.2b/c SELBST, Rest E; 2024 I.1 E; 2020 II.2.1/2.2 SELBST; 2023 IIa.1, 2022 I.1, 2017 II.2 E.
- So (Ergebnis): auf Kern gekürzt. Geschafft: 2016 I.2 komplett (e/m 2,5 % Abw.), 2017 I.3 erklärt, K3, K4, 2021 I.1 komplett (1.3 SELBST ≈ 3/6), 2020 II.2 komplett (2.1 SELBST ≈ 9/13, 2.2/2.3 erklärt). Gestrichen: 2020 II.3, 2023 I.2, 2022 IIa.2, 2020 II.1, 2025 A1, 2024 I.1, 2023 IIa.1, 2022 I.1 (+ Optionales).
- Mo (≈2 h 15 realistisch, nach Wichtigkeit): SELBST 2024 I.3.2 (60), 2023 IIb.3.2/3.3 (45), 2021 I.3.3 nur Herleitung λ (15, Rest ERKLÄRT); ERKLÄRT 2025 A3 (15). Optional 2021 IIa.3, 2025 A4. Gestrichen 2024 I.2.
- Di (≈1 h 30): erst Offenes (nur SELBST), H6 + H7 SELBST kurz, Heft-Liste, Blitzrunde D11, D12, D19, D21, D22, D24, D25, D28, D29, D30, Fehler. Kür optional. Kein neuer Stoff.
- Gestrichen: 2022 IIa.1, 2016 I.3; 2023 I.1, 2018 I.1, 2017 I.2, 2024 II.1 nur als Drill.
- Übungsklausur 1 nur, wenn Zeit übrig ist.

**Mi 11.11. – VORABI PHYSIK.**

### Woche 3: Mathe

**Do 12.11. (Studientag) – 5 h – Wachstum + Analysis**
- [ ] Wachstum: Rest 2018 CAS 1B; 2024 CAS 1B e) (DGL begrenzt + linear); 2017 CAS 1A (Zerfall, logistisch)
- [ ] Rotationskörper 2023 CAS 1A g); Ortslinie 2022 CAS 1A i)–j); Steckbrief/Trassierung + uneigentliches Integral + Ober-/Untersumme aus Buch Kap. 6.1/6.2 (S. 252 ff.)
- [ ] Ableitungen/Stammfunktionen per Hand (Drill, 10 Stück), Gauß per Hand

**Fr 13.11. (vormittags Vorabi Deutsch) – 3 h – Stochastik**
- [ ] Lernzettel `stochastikLernzettel` + `Prognose- und Konfidenzintervalle` durchgehen: Binomial, σ-Regeln, Prognose vs. Konfidenz, Normalverteilung, Auslastung, 3-mal-mindestens, Vierfeldertafel
- [ ] Konfidenz 2023 CAS 2A e)–f); Normalverteilung 2023 CAS 2C d)–f); Vierfeldertafel 2022 CAS 2A; Lösungen `2023Mathe/Lösungen/CAS-Lösung.pdf`, `2022Mathe/Lösungen/CAS-Lösung.pdf`

**Sa 14.11. – 6 h – Probeklausur Abitur 2025**
- [ ] 110 min Teil A (`2025_Mathe_eA_A.pdf`): P1–P4 + Q1 (Umkehrfunktion) + Q2, ohne TR
- [ ] 220 min Teil B (`2025_Mathe_eA_CAS.pdf`): 1A · 2B · 3A. Zu lang → 3A auf Sonntag.
- [ ] 30 min grob mit EWH (`Lösungen/2025_Mathe_eA_A_EWH.pdf`, `..._CAS_EWH.pdf`), Punkte schätzen

**So 15.11. – 4 h – Korrektur + Geometrie**
- [ ] Probeklausur im Detail korrigieren, Fehlerliste
- [ ] Ebenen (Formen, Lage, Winkel, Abstände), Licht und Schatten (Schnitt Gerade–Ebene; Parallel-/Zentralprojektion)
- [ ] 2022 CAS 3C (Licht/Schatten, 25 BE) + 2024 CAS 3B b); Ortslinie 2024 CAS 3A f)–g)
- [ ] Wachstums-Tabelle abfragen

**Mo 16.11. – 2,5 h – Hilfsmittelfrei-Drill**
- [ ] 2024 Teil A (`2024_Mathe_eA_A.pdf`: P1–P4 + Q2 + Q3) in 100 min ohne TR, EWH; Luft → Pflichtteil 2023 (`Plichtteil.pdf`)
- [ ] Merkzettel + Fehlerliste. Kein neuer Stoff.

**Di 17.11. – VORABI MATHE.**

### Informatik

**Mi 18.11. – 2,5 h – Plattform**
- [ ] Arthur loggt sich im Browser-Pane ein; Themen der Plattform gemeinsam durchgehen, pro Thema: kann er es erklären? Lückenliste → erklären

**Do 19.11. – 2,5 h – Abituraufgaben**
- [ ] 2025 Block 1 A (Huffman/Binärbaum) + Block 2 A (Kryptologie) unter Zeit – `2025Informatik/2025_Informatik_eA_1A.pdf`, `..._2A.pdf`, EWH `Lösungen/2025_Informatik_EWH_eA_1.pdf`, `..._2.pdf`

**Fr 20.11. – VORABI INFORMATIK.**

---

## Abituraufgaben nach Thema

### Physik (Ordner `Arbeiten/Abiturarbeiten/Physik (LK)/`)

**Alle zehn Jahrgänge zählen (Arthur, 30.10.): bei jeder Lektion und jeder Probeklausur 2016–2025 durchgehen, nicht nur die neuesten.**

2016–2020: Aufgabe I und II (80 BE, je 3 Teilaufgaben), Lösungen in `...Lehrer/`. 2021–2024: Aufgabe I und II a / II b (72 BE, 3 Teilaufgaben à 24 BE), Lösungen in `...Lehrer/` bzw. `..._EWH.pdf`. 2025: Aufgaben 1–4 à 40 BE, EWH in `2025_Physik_eA/EWH/`. `mitExp...`-Ordner: gleiche Aufgaben, eine Teilaufgabe durch Experiment ersetzt.

| Thema | Aufgaben (neueste zuerst) |
|---|---|
| Kondensator / E-Feld | 2025-2 (Ladekurve, RC) · 2024 gA II.3 (Kondensatorentladung) · 2023 II a T3 (Kapazität, Dielektrikum) · 2022 I T2 (Elektronen im Kondensatorfeld) · 2021 I T2 (Plattenkondensator) · 2020 I.2 (Elektronenablenkröhre) · 2019 I.1 (Kondensatorentladung) · 2016 I.1 (Polystyrol, Füllstand) |
| Magnetfeld / Lorentzkraft | 2024 II T3 (Wien-Filter, Massenspektrometer) · 2022 II b T3 (Spule, Hall) · 2022 I T3 (Stromwaage) · 2021 II b T3 (Hallsonde) · 2020 II.3 (Stromwaage) · 2020 I.1 (Hall) · 2017 I.3 (Wien, Hall, Spule) · 2016 I.2 (Fadenstrahlrohr) |
| Induktion | 2023 I T2 (Dreieckstrom, fallender Magnet) · 2018 I.2 (Induktion, Lenz); sonst Mappen-Klausur Nr. 3 Aufgabe 2 |
| Schwingungen | 2023 II a T2 (Fahrradkette) · 2023 I T1 (Schwingkreis, Resonanz) · 2022 II a T2 (Feder-Masse-Pendel) · 2021 I T1 (Schwingkreis, Resonanz) · 2020 II.1 (Fadenpendel) · 2018 I.1 (Fadenpendel, Feder) |
| Wellen / Interferenz | 2025-1 (Polarisation, LCD) · 2024 II T1 (LED weiß, Lichtsensor) · 2024 I T1 (Wellen, Ultraschall) · 2023 II a T1 (Doppel-/Mehrfachspalt, Messunsicherheit) · 2022 II a T1 (LED, Doppelspalt, Gitter) · 2022 I T1 (Ultraschall-Doppelspalt) · 2021 II a T1 (Gitter) · 2021 II a T2 (Michelson, CD) · 2020 II.2 (Gitter, LED rot) · 2019 II.1 (Interferenz, c in Wasser) · 2019 II.2 (Michelson, Mikrowellen) · 2018 II.3 (Gitter, Vierfachspalt) · 2017 II.1 (CD-ROM) · 2017 II.2 (Michelson) · 2017 I.1 (Ultraschall) · 2016 II.1 (Gitter, LED, IR, Unsicherheit) |
| Quanten I: Photonen, h (L9) | 2024 I T3 (Fotozelle) · 2021 II a T3 (h mit LEDs) · 2021 gA II a T3 · 2019 II.3 (Röntgen, h) · 2018 II.2 (Fotozelle) · 2018 II.1 (Solarzelle) · 2017 II.3 (Röntgen, Bragg) |
| Quanten II: Materiewellen (L10) | 2025-3 (Elektroneninterferenz, Komplementarität) · 2024 I T2 (C60) · 2024 gA I.2 (Farbstoffmoleküle) · 2021 I T3 (Elektronenbeugungsröhre) · 2021 gA I.3 · 2018 II 3.4 (Einzelphoton) · 2017 I.2 (He an LiF, de Broglie) · 2016 I.3 (Elektronenbeugungsröhre) |
| Quanten III: Atom (L11) | 2025-4 (Natriumspektrum) · 2023 II b T3 (H-Spektrum) · 2020 I.3 (He-Spektrum) · 2019 I.2 (Natriumabsorption, H-Spektrum) · 2016 II.2 (Natrium) |
| Nicht in der Mappe (nachrangig) | Franck-Hertz: 2022 II a T3 · 2022 gA · 2018 I.3. Kern: 2024 II T2, T3 · 2023 I T3 · 2019 I.3 · 2016 II.3. Glühemission: 2024 gA I.3 |

Reserve-Probeklausur: 2022 Aufgabe I + II a, Lösungen `2022PhysikEAohneExp/2022PhysikEALehrer/`.

Häufigkeit 2016–25 (61 Teilaufgaben eA, grob nach Hauptthema): Quanten 18, Wellen 15, Magnetfeld 8, Kondensator 7, Schwingungen 6, Kern 5, Induktion 2. Fehlerbetrachtung in fast jeder Wellen-Aufgabe.
Im Abitur, nicht in der Mappe (weglassen): Franck-Hertz, Kernphysik, Relativität. In der Mappe, 2021–25 nie im Abitur (trotzdem Vorabi-relevant, Lehrer-Klausuren + LEIFI nutzen): Fadenstrahlrohr (nur 2016 I), Lenz (nur 2018 I), Brechung (nur 2017), Selbstinduktion, stehende Wellen, Mach-Zehnder (Wortsuche in allen Aufgabentexten 2016–25: nie), Hallwachs ebenso nie, Unschärfe, Potentialtopf.

### Mathe (Ordner `Arbeiten/Abiturarbeiten/Mathe (LK)/`)

A25 = `2025Mathe/2025_Mathe_eA_A.pdf`, C25 = `2025Mathe/2025_Mathe_eA_CAS.pdf`; 2021–23: `20xxMathe/Pflichtteil.pdf` / `CAS.pdf`; Lösungen im Unterordner `Lösungen` (2024/25 `..._EWH.pdf`), 2016–2020 `...Lehrer.pdf`.

| Thema | Aufgaben (neueste zuerst) |
|---|---|
| **Wachstum / DGL / Umkehrfunktion** | C24 1B e) · A25 Q1 · 2018 CAS 1B (Modelle A–D, DGL, logistisch) · 2017 CAS 1A (Zerfall, logistisch) · 2019 CAS 1A c) |
| Änderungsrate → Bestand | C25 1A e)–h) · C24 1A e)–h) · C23 1A a)–e) · C22 1B c)–f) · C21 1A |
| Rotationskörper | C23 1A g) · C24 3A g) · 2019 Pflicht P4 b) · 2016 CAS 1B b) |
| Scharen / Ortslinien | C22 1A i)–j) · C24 3A f)–g) · C24 1A d) · C25 3A b) |
| Licht und Schatten | C22 3C (25 BE) · C24 3B b) · C23 3A d)–f) · C23 3B |
| Konfidenzintervall | C25 2B e)–f) · C24 2A e)–f) · C23 2A e)–f) |
| Normalverteilung | C25 2A d)–e) · C24 2B e)–g) · C23 2C d)–f) · A24 Q3 |
| Vierfeldertafel / bedingte W. | C25 2A · C24 2A/2B · C22 2A |
| Hilfsmittelfrei (30 BE) | A25, A24, Pflichtteile 2023/2022/2021 |

Nicht in 2021–25 (Buch Kap. 6 / ältere Jahre): Steckbrief/Trassierung, Gauß als eigene Aufgabe, Ober-/Untersumme, uneigentliche Integrale, Prognoseintervall, logistisches Wachstum.

---

## Ressourcen (optional, nur wenn Arthur Videos/Material will)

- Mappe: `Mappen/Physik/Hefteinträge/...`, Formelsammlung `Mappen/Physik/Dokumente/Formelsammlung.pdf` (Physik ab S. 15; E/M S. 24, Optik S. 34, Quanten S. 36)
- LEIFIphysik (leifiphysik.de): Aufgaben mit Lösungen zu allen Themen
- Studyflix: [Lorentzkraft](https://studyflix.de/physik/lorentzkraft-1821/video), [Fadenstrahlrohr](https://studyflix.de/physik/fadenstrahlrohr-1646/video), [logistisches Wachstum](https://studyflix.de/mathematik/logistisches-wachstum-2030)
- milq (Konzept wie im Unterricht): [Photonen im Mach-Zehnder-Interferometer](https://www.didaktik.physik.uni-muenchen.de/archiv/inhalt_materialien/milq/interferometer.pdf)
- Wachstum: [Lernhelfer](https://www.lernhelfer.de/schuelerlexikon/mathematik-abitur/artikel/unbeschraenktes-und-logistisches-wachstum), [GeoGebra-Herleitung](https://mat.geogebra.org/m/bvtrypfs)
- Mathebuch `Schulbücher/12. Klasse/Mathebuch 12 - Qualifikationsphase.pdf`: Wachstum S. 63–110, Geometrie S. 112–184, Stochastik S. 185–251, Abiturvorbereitung S. 252 ff.

---

## Log

- 26.10.: Plan erstellt. Arthur: alles im Chat, Datei nur Tracking. Deutsch/Englisch keine Vorbereitung, Nachschreibtermin irrelevant. Elektrostatik-Mappe komplett gelesen. Lektion 1 (Elektrostatik I: Ladung → Feldlinien → E = F/q → Coulomb → E = U/d) im Chat erklärt, 3 Checkfragen + 2 Rechenaufgaben gestellt, Antworten ausstehend. Formelsammlung Physik-Teil (S. 15–37, Anhang 47–52) gelesen; Auswendig-Datei (Typst) mit Lektion 1 angelegt, kompiliert ohne Fehler. HTML-Lektion `Mappen/Physik/Lektionen/01-Elektrostatik-I.html` gebaut und im Browser geprüft (keine Konsolenfehler). Skill „Physik-Visualisierer & Analogie-Trainer" auf skills.sh, GitHub, Plugin- und Skill-Katalog nicht gefunden; Arthur um Link gebeten. Später: Arthur will eigenes Muster behalten; L1 nach Rückfragen (E/B-Feld, Halbierungsversuch) komplett ausführlicher geschrieben (Regel: nichts so komprimiert, dass man es in der Arbeit verwechseln könnte).
- 27.10.: Lektion 2 (Elektrostatik II) als `02-Elektrostatik-II.html` gebaut: Energie/Spannung/eV, Kinematik vs. Energie mit Animation, Ablenkröhre interaktiv, Klausur 2 Aufgabe 3 mit Musterlösung und Bewertungsbogen-Punkten, Millikan-Trainer, Quiz, Aufgaben. Typst-Liste um Lektion 2 ergänzt. `Arbeiten/12.1/Physikarbeit Nr. 1 - (12.1).pdf` ist in Wahrheit Klausur 2 (Kondensatoren) inkl. Arthurs Lösung + Korrektur + Bewertungsbogen; Aufgaben 1 (Entladekurve), 2 (Dielektrikum/Öl, Halbwertszeit) und 4 (Kondensatorschaltungen) für Lektion 3 verwenden. Lektionsnummerierung: L3 Kondensator, L4 Magnetfeld/Lorentzkraft, L5 Induktion, L6 Schwingungen/Wellen I, L7 Wellen II, L8–L10 Quanten. Arthurs Antworten zu L1 stehen noch aus.
- 27.10. (später): Lektion 3 `03-Kondensator.html` gebaut (Kapazität mit Q-U-Simulation, Dielektrikum-SVG mit zwei Fällen, Füllstand, Schaltungsrechner, Energie, RC-Kurven-Simulation, Exponentialregression der Klausur-Tabelle live, Klausur 2 Aufg. 1/2/4 + Abitur 2016 I + 2023 IIa mit Lösungen, Quiz, A1–A4). Elektrodynamik-Mappe komplett gelesen (enthält auch Potenzial, Faraday-Käfig, Oszilloskop-Ablesung, Energie-Herleitung über Leistung). Typst-Liste um Lektion 3 ergänzt. Damit ist der 12.1-Stoff (Elektrostatik + Elektrodynamik) komplett erklärt; Arthur hat zu L1–L3 noch nichts gerechnet → vor L4 Aufgaben einfordern. Nächste: L4 Magnetfeld/Lorentzkraft aus `(12.2) Elektromagnetismus.tex`.
- 27.10. (abends): Lektion 4 `04-Magnetfeld-Lorentzkraft.html` gebaut (Ørsted-Feldlinien, Stromwaage-Regression, Drei-Finger-Trainer, Fadenstrahlrohr, Spulenrechner + Abitur-2021-Regression, Wienfilter, Massenspektrometer, Hall-Simulation; Klausur 3 Aufg. 1 und Abitur 2021 IIb/2022 I/2022 IIb/2024 II Aufgabe 3 mit EWH gelöst). Wichtig für alle weiteren Lektionen: Lehrer und Abitur-Material nutzen die **physikalische Stromrichtung (Elektronenfluss) mit der linken Hand**; Mappe-Inkonsistenz bei der Helmholtz-Formel (R vs. d) notiert. Typst-Liste um L4 ergänzt. Elektromagnetismus-Mappe: Induktionsteil (Fluss, Induktionsgesetz, Rotation, Lenz, Selbstinduktion, Schaltvorgänge Spule, Energie ½LI²) + Klausur 3 Aufg. 2 für L5 noch nicht verwendet. Arthur hat zu L1–L4 weiterhin nichts gerechnet.
- 27.10. (nachts): Lektion 5 `05-Induktion.html` gebaut (Fluss, Induktionsgesetz mit Dreieck→Rechteck, Generator, Lenz, fallender Magnet als Simulation, Selbstinduktion, RL-Schaltvorgänge, Energie; Klausur 3 Aufg. 2 und Abitur 2023 I Aufg. 2 mit EWH). Typst um L5 ergänzt. Damit ist die gesamte Mappe (12.2) Elektromagnetismus abgedeckt. Nächste: L6 Schwingungen + Wellen I aus `Schwingungen_und_Wellen.typ` (Zeigerformalismus, Wellen, Huygens, Brechung, stehende Wellen, Polarisation) + Klausur 3 Aufg. 3. Arthur hat zu L1–L5 nichts gerechnet; vor L6 nachdrücklich Aufgaben einfordern.
- FS-Inhalt Kurzfassung (für Abgleich): E-Lehre S. 24–33: I, R, Kirchhoff, P = UI, ΔE = qU, Coulomb (mit εr), E = F/q, E = U/d, Radialfeld, D, σ, Potenzial, Wechselstrom (X_C, X_L, Z), Kondensator (C, C = ε₀εr A/d, ½CU², Lade-/Entladekurven U, I, Q, DGLs, Reihe/Parallel), Magnetfeld (B = F/(Is), Leiter, Spule, H), Lorentz (q v B sin α), Hall (U_H = b v B, R_H), Fluss, Induktionsgesetz (dΦ/dt, ΔB/Δt, ΔA/Δt, B·l·v), Trafo, L = μ₀μr N²A/l, Selbstinduktion, ½LI², Schaltvorgänge Spule + DGLs, Schwingkreis (Thomson, Dämpfung), c = 1/√(ε₀μ₀), Intensität. Optik S. 34–35: Reflexion, Brechung, Totalreflexion, Linsen, Doppelspalt (Max/Min), Gitter, Einzelspalt, Bragg, Rayleigh, Polarisationsfilter cos², Brewster. Quanten S. 36–37: E = hf, Fotoeffekt, p = E/c, de Broglie, Compton, Unschärfe (h/4π), Schrödinger + Potentialtopf-Lösung Ψ_n (keine E_n-Formel!), hf = ΔE, Balmer/Rydberg. Mechanik S. 15–23: Newton, Kräfte, Kinematik, Würfe, Energie, Arbeit, Gravitation, Impuls, Stöße, Schwingungen (Feder-/Fadenpendel, DGL), Wellen (Wellenfunktion, stehende Wellen), Doppler. Nicht in FS: Potentialtopf-Energien E_n, Fadenstrahlrohr/e/m, Wienfilter, Massenspektrometer-Radius, Zeitkonstanten τ, Halbwertszeit, Michelson-Zählformel, Gegenfeldmethode-Umformung, Kondensator-Entladung-Herleitung, alles Begriffliche.
- 7./8.11.: Sa: 2025 A2 2.2a–2.3a, 2022 I.2 und 2016 I.2.1–2.3 mit Fotos korrigiert (Werte in der Wochenzeile, Fehler in der Fehlerliste). Viele Verständnisfragen (τ, e-Form, Integral, Superposition, d/2, Achsenwahl). Arthur will PDF-Pfade als vollen Text (Memory). 8.11.: Plan für So–Di rationiert (SELBST/ERKLÄRT), Planseite und index.html angepasst.
- 8.11.: So gekürzt (Arthur: Zeiten unrealistisch). Viel „erklär“ im Chat (2016 I.2.4, 2017 I.3, 2021 I.1.1/1.2, 2020 II.2/2.3, Eigenschwingung, Resonanz, Δs). Fotos 2021 I.1.3 und 2020 II.2.1 korrigiert. Planseite: So-Ergebnis, Mo gekürzt (doppelte Zeiten), Tabelle „Im Plan“ angepasst.
- 9.11.: Fragen zu ΔE = q·U (FS S. 25) und Einsetzen in h·f = W_A + E_kin. Foto 2024 I.3.1 korrigiert (≈ 3/6). 2024 I.3.2 Teil 1 2/2, Teil 2 ≈ 3/5: Schritt 3 erstmals MIT Formel (Fortschritt!), aber Diagramm leer, h nicht in 10⁻³⁴ J·s umgerechnet, „Steigung = h“ nicht gesagt. Abweichung 1,6 % ✅, Deutung, 3.3 und 3.4 ERKLÄRT. 2024 I.3 fertig.
- 10.11.: Mo nur 2024 I.3 und 2023 IIb.3.1–3.3 geschafft (3.2/3.3 selbst, ohne Foto-Korrektur, Werte im Chat richtig: m = 6,0 / 4,0 / 3,1). Di: 3.4 ERKLÄRT. Offen aus Mo: 2021 I.3.3 Herleitung, 2025 A3. Di-Plan im Chat gekürzt (H6, H7, 2021 I.3.3, Fehlerliste, 4 Drills). Arthur wollte Abituraufgaben zu H6/H7: Selbstinduktion 2016–25 nie im Abitur (Wortsuche bestätigt), Ersatz gleiche Mathematik 2019 I.1 (Kondensatorentladung, t_H); Feder: 2016 mit Exp Wellen I.1.2 (EWH-Beispielwerte, D ≈ 4,1 N/m), 2022 IIa.2.2, 2018 I.1.4. Arthur (10.11.): Aufgabe 1 = leicht abgewandelte Abituraufgabe, Aufgabe 2 = fast unveränderte Abituraufgabe, Aufgabe 3 = Tepes eigene. Folge: vor jeder Empfehlung Wichtigkeit prüfen; ungesehene Abituraufgaben wiedererkennen (ERKLÄRT) schlägt Zusatzübungen; 2016 I.1.2 (mit Exp) und 2018 I.1.4 wieder gestrichen. 2021 I.3.1 Skizze geprüft (U_B falsch gepolt, Strahl fehlte) und erklärt. Arthur will Zeiger-Rechnen üben: im Abitur nur 2017 I.1.3 (wahlweise Zeigerdarstellung); Kurzkurs + 3 Mini-Aufgaben im Chat. Quanten-Lücken benannt: 2021 IIa.3 (h mit LEDs), 2025 A3, Potentialtopf, Mach-Zehnder/Unschärfe nur als Merksätze. 2021 I.3.1 zweites Foto: Skizze jetzt vollständig und richtig gepolt, Ring-Erläuterung ≈ 3,5/4, aber Beschreibungstext zur Elektronenkanone fehlt (≈ 6/9). 3.2 ERKLÄRT (d ≈ 232 pm, n = 4). 3.3 Herleitung per Foto ≈ 2/4. 3.3 Teil 2 ERKLÄRT, 2021 I.3 fertig. Danach Stufe 1 als Abituraufgaben: 2024 I.1 komplett (1.1 selbst ≈ 1,5/5, 1.2–1.4 ERKLÄRT mit Diagrammen), 2023 I.2.1 ERKLÄRT, 2.2 selbst ≈ 3/10. Verwechslung geklärt: Gleichstrom reicht für B-Feld, Änderung nur für Induktion nötig. Neu (Memory): zu jeder Formel FS-Seite nennen. 2023 I.2.3 ERKLÄRT, 2023 I.2 fertig. Stufe 1 noch offen: Polarisation 2025 A1, Pendel 2022 IIa.2, h mit LEDs 2021 IIa.3, Michelson 2021 IIa.2, Doppelspalt 2022 I.1. 2025 A1 1.1a selbst ≈ 3/5: longitudinal/transversal jetzt richtig, Polarisation zu vage („nur einen Teil durchlassen“), Kernpunkt „nur transversale Wellen polarisierbar“ fehlte. 1.2a Diagramm, 1.2b/c (k ≈ 0,00103 V/Grad², 19 % / 28 %) ERKLÄRT; 1.3a selbst ≈ 1–2/5 (nur „Formel rechnen“, Neupolarisation fehlte), 1.3b ERKLÄRT (0,81 V); 1.4 übersprungen. 2022 IIa.2.1 selbst ≈ 2/4. 2.2 ERKLÄRT (m ≈ 164 g; „T verdoppelt bei 4m“ wusste Arthur selbst). 2021 IIa.3: 3.1 selbst ≈ 1/4 (nur „Diode braucht Überwindungsspannung“, Photonenmodell unbekannt → neu erklärt), 3.2 ERKLÄRT (h ≈ 6,76·10⁻³⁴ J·s linear, 6,82 proportional). 3.3 (U_c ≈ 1,19 V, λ ≈ 1030 nm, mit Diagramm) und 3.4 ERKLÄRT, 2021 IIa.3 fertig. 2021 IIa.2.1 Michelson ERKLÄRT mit Lichtweg-Skizze (λ ≈ 630 nm). 2022 I.1 Doppelspalt (Ultraschall, exakte Wege per Pythagoras, f ≈ 39 kHz) ausführlich ERKLÄRT mit Skizze. Stufe 1 damit komplett durch. Danach Potentialtopf ERKLÄRT (Herleitung in vier Schritten, 2020 I.3.1).
- 11.11. (früh, Klausurtag): Arthur fragt nach Lücken in der Quanten-Mappe (`Hefteinträge/(13.1) Quantenmechanik/quantenmechanik.typ`, 20 S., plus Bohr-Blatt 25.9.2026 in images/). Abgleich: im Chat nie erklärt = Hallwachs-Versuch (Tabelle +/−, Kohlebogen/UV), Heft-Elektronenbeugung H16 (zwei Ringe = zwei Netzebenen g₁ = 213 pm, g₂ = 123 pm, Auswertungskette λ~1/√U → λ~1/v → λ = h/p), LED-Heft (Vorwiderstand, U_s = −B/A), Mach-Zehnder/Delayed Choice, Ψ und |Ψ|², Zustandspräparation/Verschränkung/Komplementarität/Unschärfe, Schrödinger-Lösung des Topfs (Ansatz, Randbedingungen, Normierung, HA l = 1 Å: 37,6/150/338/602/940 eV), Bohr-Herleitung. Übrige Mappen-Themen abgedeckt. Als Kurzfassung im Chat nachgeliefert. Arthur: „Muss ich diese Punkte laut dem KC können?“ → im KC 2022 (`Old/Alte Mappen/Physik/250814 - Kerncurriculum.pdf`, Quantenobjekte S. 40–42, Atomhülle S. 43) nachgeschlagen: Mach-Zehnder (Aufbau, Komplementarität, Nichtlokalität, delayed choice, Kausalität), Zustand/Präparation/Superposition am Beispiel polarisiertes Licht, Unbestimmtheit qualitativ: alles „nur eA“, also Pflicht; stochastische Deutung, Nachweiswahrscheinlichkeit ~ Zeigerlänge² für alle. Nicht im KC: Schrödingergleichung, Wellenfunktion/Kopenhagen als Wort, Bohr-Herleitung, „Verschränkung“ als Wort. Im KC, nicht in der Mappe: Koinzidenzmethode, Röntgen, Franck-Hertz. Arthur lehnt Fehlerliste und Zeiger-Aufgaben ab, will Lückenübersicht inkl. Konzepte, nur Tepe-Relevantes. Übersicht im Chat: Stufe 1 ohne jede Aufgabe = Wellen (stehende Welle/Ultraschall 2024 I.1, Polarisation 2025 A1, Michelson 2021 IIa.2, Doppelspalt 2022 I.1), Induktion 2023 I.2, Feder-/Fadenpendel 2022 IIa.2 / 2020 II.1, h mit LEDs 2021 IIa.3; Stufe 2 = Stromwaage, Kapazität/Dielektrikum, t_H 2019 I.1, 2025 A3, Potentialtopf, H6; Stufe 3 = Merksätze.

## Anpassungsregeln

- Thema zu schwer → Verständnis verlängern, Aufgabenblock streichen.
- Zwei Tage unter 50 % → kürzen: zuerst Zusatzaufgaben 2./3.11., dann Drill 16.11.
- Schneller als geplant → Reserve: zweite Physik-Probeklausur (2022 I + II a) am 9.11.
- 27.10. (abends): Alle Formeln in L1–L5 auf KaTeX umgestellt (Konverter-Skript, 38 Display-Formeln per Hand mit \frac). Browser-Check: 0 Fehler. Noch Klartext: Formeln in h3-Überschriften und einzelne Rechnungen im Fließtext außerhalb von span.f. Arthur hat die Feldlinien-/Probeladungs-Frage zu L1 gestellt (Vorzeichen F = qE); weiterhin keine gerechneten Aufgaben.
- 28.10.: Rest-Umstellung auf KaTeX abgeschlossen: Fließtext, Überschriften, Summaries, Tabellen, Slider-Labels (5 Agenten, ~710 neue Spans) sowie alle JS-Widget-Ausgaben, Slider-Werte und Quiz-Texte (texHTML-Helfer, deT/sciT/unitT, Hervorhebung \htmlClass{hl}). Browser-Check aller fünf Seiten mit Slider-/Quiz-Interaktion: 0 Fehler. Nur `<option>`-Texte und Canvas-Beschriftungen bleiben Klartext (technisch kein HTML möglich). Arthur noch keine Aufgaben gerechnet.
- 29.10.: Lektion 6 `06-Schwingungen.html` gebaut (1002 Zeilen, 15 Abschnitte, 10 Simulationen: Sinus mit Markierungen, Heft-Messreihe mit Linearisierung (D = 104 statisch / 107 dynamisch), Feder-Animation y/v/a, Energie, Fadenpendel exakt integriert (RK4, T über elliptisches Integral), Zeiger mit Heft-Beispiel (Vorzeichenfehler im Heft: −4,0 cm), Dämpfung mit Peak-Regression, Resonanzkurve, Schwingkreis-Auswertung (λ = 658 s⁻¹, T = 417,3 µs, L = 0,133 H), Fahrradkette 2023 (Potenzregression 1,411·l^0,493 = EWH)). Quellen: Heft-PDF S. 1–15, Arbeitsblatt Gedämpfte Schwingungen, Klausur 3 Aufg. 3, Abitur 2022 IIa/2023 IIa Aufg. 2 mit EWH. Scope-Entscheidung: L6 = Schwingungen komplett inkl. Schwingkreis; Wellen I wird L7, Wellen II L8, Quanten L9/L10. Typst erweitert (10 Seiten, kompiliert). Browser-Check: 980 Formeln, 0 Fehler, Konsole leer. Arthur weiterhin ohne gerechnete Aufgaben; L5-Aufgaben und L6 A1–A6 einfordern.
- 29.10. (später): Lektion 7 `07-Wellen-I.html` gebaut (969 Zeilen, 15 Abschnitte, 11 Simulationen). Quellen: Typst-Heft Wellen/Welleneigenschaften 1–6/Ultraschall, Heft-Bilder (Huygens, Kante, Brechung, Polarisationsgraph), Abitur 2025 Aufgabe 1 + EWH (`2025_Physik_eA/EWH/2025_Physik_eA_1_EWH.pdf`). Fund: Lehrer-Sinusregression y = 0,951·sin(0,0322x + 1,772) + 0,958 ist Malus (Offset = Amplitude = U_max/2, α₀ ≈ −6°). Typst erweitert (11 Seiten). Browser-Check: 657 Formeln, 0 Fehler, Konsole leer; Ultraschall-Simulation liefert c ≈ 341 m/s, drei Filter 0,81 V (EWH). Nächste: L8 Wellen II (Michelson, Doppelspalt-Herleitung exakt + Näherung, Gitter, LED-Spektrometer, Fehlerbetrachtung, Einzelspalt-Blatt) mit Abitur 2021 IIa T1/T2, 2022 I T1, 2023 IIa T1, 2022 gA 1. Danach Quanten L9/L10. Arthur weiterhin ohne gerechnete Aufgaben.
- 30.10.: Lektion 8 `08-Wellen-II.html` gebaut (789 Zeilen, 15 Abschnitte, 8 Simulationen: Michelson mit Maxima-Zähler, Doppelspalt-Geometrie exakt (Heft rot/grün, d-Rückrechnung 0,58 mm), Näherungsfehler vs e/d, Intensität Licht/Ultraschall (Abitur 2022 I: λ = 8,7 mm, f = 39 kHz), N-Spalt mit Zeigerpolygon und Streifenbild, LED-Spektrum mit Lineal, Fehler-Rechner beide Verfahren, Einzelspalt mit Zeigerbogen). Quellen: Typst-Heft Michelson/Doppelspalt/Gitter/LED/subjektiv/Fehlerbetrachtung + Bilder, Blatt 7.3.4 Einzelspalt (gerendert), Abitur 2021 IIa 1+2, 2022 I 1, 2022 gA 1, 2023 IIa 1 mit EWH. Typst erweitert (13 Seiten). Browser-Check: 672 Formeln, 0 Fehler, Konsole leer. Damit ist die komplette Mappe Schwingungen und Wellen abgedeckt (L6–L8). Nächste: L9 Quanten I aus `(13.1) Quantenmechanik/quantenmechanik.typ` (Photoeffekt, h-Bestimmung, Gegenfeld; Abitur 2021 IIa 3 LED-h, weitere Quanten-Aufgaben 2021–25: 8 Teilaufgaben), dann L10 Quanten II (Elektronenbeugung/De Broglie, Elektroneninterferenz 2025-3, Unschärfe/Quantenobjekte). Arthur weiterhin ohne gerechnete Aufgaben.
- 30.10. (parallel zur L9-Session): Lektion 10 `10-Quanten-II.html` gebaut (785 Zeilen, 15 Abschnitte, 7 Simulationen: Bragg-Geometrie mit Zeigern, Elektronenbeugung (Ringe + drei Heft-Diagramme live aus Elektronenbeugung.ods, h_exp = 7,04·10⁻³⁴ Js, +6 %), de-Broglie-Rechner mit Längenskala, Tonomura-Aufbau-Simulation (Jönsson-Geometrie, Welcher-Weg-Schalter), Mach-Zehnder mit Delayed-Choice-Statistik, Energieniveaus H/Na mit Spektrum, Potentialtopf Ψ/|Ψ|²). Quellen: Heft ab Interferenz am Kristallgitter bis Potentialtopf + Bilder, Bohr-Blatt (25.9.26), Abitur 2021 I 3, 2023 IIb 3, 2024 I 2, 2025 Aufg. 3+4 mit EWH. Scope-Abgrenzung: Photoeffekt/Gegenfeld/LED-h = L9 (Parallelsession). Typst nur angehängt (Abschnitt L10 steht vor L9, falls L9 später anhängt). Browser-Check: 584 Formeln, 0 Fehler, Konsole leer. Damit alle Mappen-Themen erklärt; ab jetzt Aufgaben und Korrektur. Arthur weiterhin ohne gerechnete Aufgaben.
- 30.10.: Lektion 9 `09-Quanten-I.html` gebaut (1252 Zeilen, 16 Abschnitte, 10 Simulationen: Hallwachs mit Elektroskop, Photonen auf Metall mit Energiebilanz, Photonenrechner, Gegenfeld mit Aufbau und I-U-Kurve, f-E-Regression Heft/2018/2024 mit Schreibfehler-Schalter, Materialvergleich, LED-Bändermodell, Kennlinie mit R-Regler und Abitur 2021 M3c, h aus LEDs, Röntgenspektrum). Quellen: Typst-Heft Quantenmechanik + Bilder, alle zehn Abiturjahrgänge durchsucht; genutzt 2018 II 1+2, 2021 IIa 3, 2021 gA IIa 3, 2024 I 3, 2017 II 3, 2019 II 3 mit EWH. Arthur fragte „warum nur abitur 2021 und 22?": 2016–20 waren bei der Planung nie geöffnet worden, ohne guten Grund; Abitur-Tabelle oben jetzt 2016–2025. In L1–L8 und L10 fehlen ältere Aufgaben noch (L3/L4 nur vereinzelt 2016). Nachrüsten: Arthur am 30.10. „nicht jetzt", nur auf Wunsch wieder aufgreifen. Heft-Schreibfehler in L9 markiert: f = e/λ, U₀ = 1,993 V, 576 nm, Einheit mA/U, Achse E (Js). Typst: L9 zwischen L8 und L10 eingefügt, kompiliert. Browser-Check: 655 Formeln, 0 Fehler, Konsole leer, alle Regressionen reproduziert, hell/dunkel, Handybreite ohne Seitenüberlauf. Arthur weiterhin ohne gerechnete Aufgaben, neu offen: L9 A1–A7.
- 30.10.: Lektion 11 `11-Quanten-III.html` gebaut (18 Abschnitte, 12 Simulationen: klassischer Kollaps gegen Linien, Coulomb-Fläche und E_pot, Kreisbahn-Energien, Welle auf dem Ring, Trichter, Serien mit Linien-Prüfer, Niveauschema-Trainer H/Na/He, Absorption mit Schatten und Spektrum, Spektrometer 2025, Schießverfahren, |Ψ|²-Messungen, Topf gegen Atom). Scope: Quanten III: Atom laut Zeitplan Do 5.11. und Aufgabenliste (L11), Vertiefung zu L10 (Überlappung Wasserstoff, Absorption, Topf offen benannt). Gefunden: Blatt S. 5 ΔE-Klammer vertauscht, Blatt e-Vorzeichen uneinheitlich, Heft Ĥ = −iħ∂/∂t, Heft-H-Messung beide Werte Faktor 1,04 zu hoch (systematisch), 2025 4.3 kleineres g oder größeres d muss noch auf den Sensor passen (d nur 13,3–14,3 cm). Ältere Abituraufgaben 2016, 2019, 2020 mit Lösung in Abschnitt 13. Typst: L11 ans Ende, kompiliert. Browser-Check: rund 900 Formeln, 0 Fehler, Konsole leer, alle Regler und Knöpfe durchgespielt, hell/dunkel, Handybreite. Arthur weiterhin ohne gerechnete Aufgaben, neu offen: L11 A1–A6.
- 30.10. (nachmittags): Übungsklausur 1 im Lehrerstil gebaut: `Mappen/Physik/Übungsklausuren/Uebungsklausur-1-Aufgaben.typ/.pdf` (4 Seiten, 100 BE: A1 Feld/Kondensator 25, A2 Magnetfeld/Induktion 25, A3 Schwingungen/Wellen 25, A4 Quanten 25; Messreihen für TR-Dokumentation, Herleitungen, Deutungen, Fehlerbetrachtung Min-Max, cetz-Diagramm Dreieck-B(t)) und `Uebungsklausur-1-Erwartungshorizont.typ/.pdf` (6 Seiten, Bewertungsbogen wie Lehrer: Kriterium, Lösungsskizze, BE, Spalte „erreicht", Gesamtbogen mit Abitur-Notenschlüssel, Korrekturregeln). Alle Zahlen gegengerechnet (Regressionen, ε₀ 8,6–9,0·10⁻¹², τ 4,97 ms, e/m 1,78·10¹¹, B 61 mT, L 0,50 H, c 344 m/s, LED 616–691 nm, h 6,59·10⁻³⁴ Js, W_A 1,83 eV, d 200 pm, 486/103 nm). Noch von Arthur nicht geschrieben. Außerdem auf Arthurs Rückmeldung („verstehe nicht, wohin die Kräfte zeigen") die Pendel-Zeichnung in `01-Elektrostatik-I.html` Abschnitt 5 neu gebaut: drei Kraftpfeile ab Kugelmittelpunkt mit Pfeilspitzen (F_g grün, F_el rot, F_Faden violett, neue CSS-Variable --rope), gestricheltes Kräfteparallelogramm mit Resultierender in Fadenrichtung, Winkel α am Aufhängepunkt und im Kräftedreieck, Auslenkungsdreieck Höhe/Δx/h, echte Indizes, Zeichenwinkel stetig überhöht (Kubikwurzel-Abbildung bis 45°, Hinweiszeile „gezeichnet x°, wirklich y°"), Lesehilfe als Text darunter; Browser-Check hell/dunkel, Regler-Extreme, Konsole leer.
- 4.11.: L7 auf Arthurs Wunsch („mehr Diagramme/Bilder/Darstellungen") um 16 statische SVG-Skizzen ergänzt, Heft-Bilder nachgezeichnet und ergänzt: Teilchengeschwindigkeit mit Verschiebe-Methode und Transversal/Longitudinal mit Schwingungsrichtung, Verdichtung, Verdünnung (§1), Momentaufnahmen t und t + T/4 (§2), Huygens Kreiswelle und Einhüllende (§4), Brechungs-Herleitung mit A, B, A′, B′, s₁, s₂, d und beiden Winkelpaaren plus Lesehilfe (§5), Interferenz zweier Kreiswellen mit Maxima-/Minima-Hyperbeln und Δs am Punkt P (§6), Reflexion festes/loses Ende (§7), Eigenschwingungen fest-fest/lose-lose/fest-lose für k = 0–2 nach FS S. 22 (§8, neue CSS-Klasse .grid3), Ultraschall-Aufbau und s(u)-Auswertung (§8), LCD-Teilpixel 0 V/3 V (§10). Nur Theme-Farbvariablen, alle Pfeile beschriftet, JS unverändert. Browser-Check: 0 KaTeX-Fehler, keine doppelten IDs, Handy 375 px ohne Überlauf, hell/dunkel.
- 5.11.: L8 auf Arthurs Wunsch („mehr Bilder und Grafiken") um 14 statische SVG-Skizzen ergänzt, Heft-Bilder nachgezeichnet und ergänzt: Michelson-Arm mit Faktor 2 (hin und zurück) und Heft-Wellenbild 4.3/4.2 Bsp. 1 (180°, dunkel) und Bsp. 2 (λ/8 ⇒ 90°, √2·A) (§1), Einzelspalt-Kreiswelle (Huygens) und Doppelspalt mit Wellenbergen, Maxima 0./1. Ordnung und Minima (§2), Herleitungsskizze in zwei Teilen: großes Dreieck mit tan α = a/e und Ausschnitt mit Lot, Δl, rechtem Winkel und sin α = Δl/d (§3), Zeigerbilder Maximum/90°/Minimum (§4), Heft-Bild Strahlengitter mit maßstäblichen Gangunterschieden und Zeigern (§5), Aufbau objektiv mit Farbfächer, a₁, a₂, e (§6), Aufbau subjektiv mit Rückwärtsverlängerung zum scheinbaren Bild (Heft-Feld war leer, §7), Fehlerbereiche ±2 mm am Farbband mit Lineal (§8), Einzelspalt-Teilbündel 1. Minimum (Hälften, b/2) und Nebenmaximum (Drittel) (§9), Zeiger Vierfachspalt 180°/90° und Dreifachspalt 120° (§10). Nur Theme-Farbvariablen (Spektrum als feste Farben), alle Pfeile beschriftet, JS unverändert. Browser-Check: 0 KaTeX-Fehler, kein roher LaTeX-Text, 8 Canvas gezeichnet, keine doppelten IDs, Handy 375 px ohne Überlauf, hell/dunkel.
- 6.11.: Arthur: Tepe nimmt nur, was im Kerncurriculum UND in der Mappe steht; Aufgaben 1 und 2 aus Abiturarbeiten übernommen, Aufgabe 3 selbst ausgedacht. Wunsch: echte Abituraufgaben, alle Themen, Regressionen mit Formel im physikalischen Zusammenhang und richtigen Einheiten. Kerncurriculum eA (3.3, Anhang A2 Regressions-Musterbeispiel S. 52) und alle eA-Arbeiten 2016–2025 ohne Experiment ausgewertet (61 Teilaufgaben). Gebaut: `Mappen/Physik/Lektionen/00-Vorabi-Aufgabenplan.html` (Stoff-Abgrenzung, Arbeitsweise VOLL/SKIZZE/REG/LESEN, Tage Fr–Di mit 56 Abhak-Aufgaben, Regressions-Werkstatt mit Einheitenregel [a] = [y]/[x]^b, Drills D1–D30 mit EWH-Werten, Heft-Messreihen H1–H16 als Kandidaten für Aufgabe 3, Gesamttabelle). Werte stichprobenartig gegen EWH geprüft (2018 II 2.2, 2019 I 1.3, 2020 II 2.2/3.2, 2025 A2). `index.html` Termine angepasst. Browser-Check: 0 KaTeX-Fehler, 66 Linkziele erreichbar, Handy 375 px ohne Überlauf, hell/dunkel. Erste Aufgabe gestellt: D1, dann 2025 A2 VOLL (80 min), Foto zur Korrektur. Arthur weiterhin ohne gerechnete Aufgaben.
- 6.11. (abends) / 7.11.: Fr nur 2025 A2 2.1a–c im Chat geschafft (2.1a 3/3, 2.1b ≈ 4/5, 2.1c ≈ 3/5; Fehler in der Fehlerliste). 7.11. Arthur: „ich MUSS heute mit elektrostatik und dynamik fertig werden“, nur wichtigste Aufgaben + Konzepte. Planseite umgebaut: Fr als Erledigt-Notiz, Sa neu (4 Konzept-Checks mit 18 aufklappbaren Fragen, 7 Kernaufgaben ≈ 4 h 10, Kür 11 × LESEN), neuer Modus KONZEPT in „Arbeitsweise“, Di-Hinweis auf offene Kür, Drill-Tage und „Im Plan“-Spalte angepasst, H6 korrigiert (Heft-Messreihe ist der Ausschaltvorgang, I fällt; τ = 48 ms, L = 4,8 H), Handy-CSS (Formeln mehrzeilig, .task > div min-width 0). Browser-Check: 0 KaTeX-Fehler, 45 Dateilinks + 22 Lektions-Anker ok, 375 px ohne Überlauf, hell/dunkel. index.html Termine-Zeile angepasst. Sonntag bis Dienstag unverändert.
