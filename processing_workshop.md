# Processing Workshop für Teenagers - 3 Stunden

## Zeitplan

### 0:00 - 0:20 | Willkommen & Einführung (20 Min)
**Ziel:** Begeisterung wecken und Kontext schaffen

#### Ablauf:
- Kurze Vorstellungsrunde (5 Min)
- Präsentation: "Was ist Processing?" (10 Min)
  - Zeige inspirierende Beispiele von digitaler Kunst
  - Videos von interaktiven Installationen
  - Erkläre: "Code = kreatives Werkzeug"
- Installation & Setup überprüfen (5 Min)

#### Material:
- Beamer/große Bildschirm
- Beispiel-Videos: Processing-Kunstwerke (z.B. von openprocessing.org)
- Alle PCs haben Processing bereits installiert

---

### 0:20 - 1:00 | Erste Schritte - Zeichnen (40 Min)
**Ziel:** Sofortige visuelle Erfolge

#### Teil 1: Das Koordinatensystem (10 Min)
Live-Coding am Beamer:
```java
size(600, 400);   // Fenster: 600 Pixel breit, 400 Pixel hoch
background(220);  // Hintergrund in Grau (0 = schwarz, 255 = weiß)
```
- Erkläre: Canvas wie ein Blatt Papier
- Koordinaten: (0,0) ist oben links
- Zeige Sketch mit Lineal und Koordinatenanzeige
- Zeige Kreis, Rechteck, Linie, Dreieck im Sketch
- Erkläre: Positionierung über die Variablen  (verschiebe die geometrischen Objekte)

#### Teil 2: Formen zeichnen (15 Min)
Zeige und lasse Schüler mitmachen:
```java
size(600, 400);   // Fenstergröße
background(220);  // grauer Hintergrund

ellipse(300, 200, 100, 100);  // Kreis: Mitte x, Mitte y, Breite, Höhe
rect(100, 150, 80, 60);        // Rechteck: oben links x, y, Breite, Höhe
line(0, 0, 600, 400);          // Linie: von (0,0) nach (600,400)
triangle(450, 300, 500, 350, 400, 350); // Dreieck: drei Eckpunkte (x, y)
```

#### Teil 3: Farben (15 Min)
Lass uns ein erstes Bild malen!
```java
size(600, 400);           // Fenstergröße
background(0, 150, 255);  // Himmelblau: Rot, Grün, Blau (je 0-255)

fill(255, 200, 0);        // Füllfarbe Gelb für die nächste Form
ellipse(500, 75, 80, 80); // Sonne

fill(0, 200, 100);        // Füllfarbe Grün
noStroke();               // keinen Rand mehr zeichnen

rect(0, height/2, width, height/2); // Gras: untere Hälfte (height = Höhe, width = Breite)
```

**Übung:** "Zeichne dein Gesicht oder eine einfache Szene" (10-15 Min)


**Starter-Code Eine kleines Gemälde:**
```java
size(600, 600);

// Himmel
background(135, 206, 235);

// Sonne
fill(255, 220, 0);
noStroke();
ellipse(500, 100, 80, 80);

// Gras
fill(34, 139, 34);
rect(0, 400, 600, 200);

// Haus
fill(139, 69, 19);
rect(200, 300, 200, 150);

// Dach
fill(178, 34, 34);
triangle(180, 300, 300, 220, 420, 300);

// Fenster
fill(173, 216, 230);
rect(240, 340, 50, 50);
rect(310, 340, 50, 50);

// Tür
fill(101, 67, 33);
rect(280, 380, 40, 70);

// Baum
fill(101, 67, 33);
rect(450, 350, 30, 100);

fill(34, 139, 34);
ellipse(465, 340, 80, 80);


// Vogel 
stroke(0);
line(100,100,110,110);
line(110,110, 120, 100);

// Jetzt bist du dran!
// Ändere Farben: Rote Sonne, Blauer Baum, ...
// Füge hinzu: Wolken, Blumen, Zaun...
```

**Zeige beide Beispiele kurz am Beamer**, dann lassen die Schüler selbst kreativ werden!

#### Material:
- Handout mit Befehlen (siehe unten)
- Processing-Dateien als Vorlagen (beide Starter-Codes oben)
- Beispiel-Bilder zur Inspiration (optional)

---

### 1:00 - 1:10 | Kurze Pause (10 Min)

---

### 1:10 - 1:50 | Interaktivität & Animation (40 Min)
**Ziel:** Programme lebendig machen


#### Teil 1: setup() und draw() (10 Min)
```java
void setup() {            // läuft genau 1x am Anfang
  size(600, 400);         // Fenstergröße
  background(255);        // weißer Hintergrund
}

void draw() {             // läuft immer wieder (ca. 60x pro Sekunde)
  ellipse(mouseX, mouseY, 50, 50);  // Kreis an der aktuellen Mausposition
}
```
- Erkläre: setup läuft 1x, draw läuft wiederholt
- Zeige: Maus-Zeichenprogramm

#### Teil 2: Variablen & Bewegung (15 Min)
```java
float x = 0;              // Variable für die x-Position (Kommazahl), Start links

void setup() {
  size(600, 400);         // Fenstergröße
}

void draw() {
  background(220);        // alles neu grau malen, löscht den alten Kreis
  
  ellipse(x, 200, 50, 50);  // Kreis an der Position x
  x = x + 2;              // x um 2 erhöhen, Kreis wandert nach rechts
  
  if (x > width) {        // Kreis ist am rechten Rand?
    x = 0;                // zurück an den linken Rand
  }
}
```

```java
void setup() {
  size(600, 400);         // Fenstergröße
}

void draw() {
  background(255, 105, 180);  // Gesamte Fläche pink übermalen
  // random(600) = Zufallszahl zwischen 0 und 600, jedes Mal eine neue Position
  ellipse(random(600), random(200), 50, 50); 
}
```

#### Teil 3: Maus-Interaktion (15 Min)
```java
void setup() {
  size(600, 400);         // Fenstergröße
  background(255);        // weißer Hintergrund
}

void draw() {
  if (mousePressed) {     // nur wenn die Maustaste gedrückt ist
    fill(random(255), random(255), random(255));  // zufällige Farbe (Rot, Grün, Blau)
    ellipse(mouseX, mouseY, 30, 30);              // Kreis an der Mausposition
  }
}
```

#### Teil 4: Farben als Variable (10 Min)
Auch eine Farbe kann in einer Variable gespeichert werden. Ein Kreis wandert von links nach rechts, ein Klick auf eine Farbfläche ändert seine Farbe.
```java
float x = 0;                          // x-Position des Kreises
color kreisFarbe = color(255, 0, 0);  // Variable für die gewählte Farbe (am Anfang rot)

void setup() {
  size(600, 400);                     // Fenstergröße
  background(220);                    // grauer Hintergrund
  noStroke();                         // Formen ohne Rand

  fill(255, 0, 0);                    // Farbe rot
  rect(0, 0, 50, 50);                 // Farbfläche 1 oben links
  fill(0, 200, 0);                    // Farbe grün
  rect(50, 0, 50, 50);                // Farbfläche 2 daneben
  fill(0, 100, 255);                  // Farbe blau
  rect(100, 0, 50, 50);               // Farbfläche 3
  fill(255, 220, 0);                  // Farbe gelb
  rect(150, 0, 50, 50);               // Farbfläche 4
}

void draw() {
  fill(220);                          // Grau wie der Hintergrund
  rect(0, 50, width, height - 50);    // alten Kreis übermalen, Farbflächen bleiben stehen

  fill(kreisFarbe);                   // Füllfarbe = Inhalt der Variable
  ellipse(x, 250, 80, 80);            // Kreis an der Position x zeichnen
  x = x + 2;                          // x wird größer, der Kreis wandert nach rechts

  if (x > width) {                    // Kreis hat den rechten Rand erreicht?
    x = 0;                            // dann wieder von links starten
  }
}

void mousePressed() {                 // wird bei jedem Mausklick einmal aufgerufen
  if (mouseY < 50 && mouseX < 200) {  // wurde auf den Bereich der Farbflächen geklickt?
    kreisFarbe = get(mouseX, mouseY); // Farbe des Pixels unter der Maus in die Variable speichern
  }
}
```
- `get(mouseX, mouseY)` liest die Farbe des Pixels unter der Maus.
- Zeige: Der Kreis behält seine Farbe, bis eine neue Fläche angeklickt wird.
- Zusatz: Weitere Farbflächen hinzufügen (Bedingung `mouseX < 200` anpassen).

**Übung:** "Erstelle ein interaktives Zeichenprogramm mit verschiedenen Farben"

#### Material:
- Code-Beispiele zum Copy-Paste
- Cheat Sheet mit mouseX, mouseY, mousePressed, keyPressed

---

### 1:50 - 2:40 | Kreatives Projekt (50 Min)
**Ziel:** Eigene Ideen umsetzen

#### Projektauswahl (5 Min)
Schüler wählen eines:
1. **Interaktives Zeichenprogramm** (leicht)
2. **Einfaches Spiel** - Ball fangen (mittel)
3. **Generative Kunst** - Muster, die sich verändern (mittel)
4. **Eigene Idee** (mit Unterstützung)

#### Arbeitszeit (35 Min)
- Schüler arbeiten selbstständig
- Du gehst herum und hilfst
- Ermutige Experimente

#### Abschluss (10 Min)
- Code speichern
- Screenshots machen
- Projekt vorbereiten zum Zeigen

#### Material:
- Projekt-Templates (siehe unten)
- Hilfe-Karten für häufige Probleme
- USB-Sticks zum Speichern

---

### 2:40 - 3:00 | Präsentation & Abschluss (20 Min)

#### Präsentationen (15 Min)
- Jede/r zeigt kurz ihr/sein Projekt (1-2 Min pro Person)
- Publikum gibt positives Feedback
- Du zeigst Wertschätzung für alle Ansätze

#### Ausblick (5 Min)
- Wo können sie weitermachen?
  - openprocessing.org (Projekte hochladen & teilen)
  - The Coding Train auf YouTube
  - processing.org/tutorials
- Feedback-Runde: Was hat Spaß gemacht?

#### Material:
- Feedback-Zettel (optional)
- Liste mit Ressourcen zum Mitnehmen

---

## Benötigtes Material

### Technik
- Computer für jeden Teilnehmer (Processing installiert)
- Beamer/großer Bildschirm
- Lautsprecher (für Beispiel-Videos)
- Maus für jeden PC empfohlen

### Handouts
1. **Befehls-Cheatsheet** (6 Seiten)
2. **Projekt-Templates** (Code zum Starten)
3. **Ressourcen-Liste** zum Mitnehmen

### Vorbereitung
- Processing auf allen PCs installieren und testen
- Beispiel-Dateien auf allen PCs verfügbar machen
- Ordner für Schüler-Projekte erstellen
- Backup-USB-Sticks bereithalten

---

## Tipps für den Unterricht

### Dos
- **Zeige zuerst, dann lassen sie machen** - Live-Coding ist wichtig
- **Ermutige Experimente** - "Was passiert wenn...?"
- **Feiere Fehler** - Bugs sind Lernchancen
- **Gehe herum** - Individuelle Hilfe ist Gold wert
- **Nutze visuelle Beispiele** - Zeige coole Processing-Kunst

### Don'ts
- Nicht zu viel Theorie - Teenager wollen machen
- Nicht zu schnell - Warte bis alle mitkommen
- Nicht perfekt sein müssen - Hauptsache es macht Spaß
- Keine komplizierten Programmierkonzepte - OOP, Arrays etc. weglassen

### Bei Problemen
- **"Es funktioniert nicht"** → Zeige Fehlersuche (Semikolons, Klammern)
- **"Ich weiß nicht was ich machen soll"** → Stelle Fragen, zeige Beispiele
- **"Das ist zu schwer"** → Vereinfache, ermutige kleine Schritte
- **Zu große Unterschiede im Tempo** → Habe Extra-Challenges bereit

---

## Erfolgsmetriken

Am Ende sollten die Teilnehmer:
- ✓ Ein funktionierendes Programm geschrieben haben
- ✓ Verstehen, dass Code kreativ sein kann
- ✓ Grundlegende Konzepte kennen (Koordinaten, Farben, Interaktion)
- ✓ Spaß gehabt haben und motiviert sein weiterzumachen