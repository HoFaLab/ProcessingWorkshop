# Code-Beispiele für Teilnehmer

## 1. Das Koordinatensystem: Fenstergröße und Hintergrundfarbe festlegen
```java
size(600, 400);   // Fenster: 600 Pixel breit, 400 Pixel hoch
background(220);  // Hintergrund in Grau (0 = schwarz, 255 = weiß)
```

## 2. Formen zeichnen: Kreis, Rechteck, Linie und Dreieck mit Koordinaten positionieren
```java
size(600, 400);   // Fenstergröße
background(220);  // grauer Hintergrund

ellipse(300, 200, 100, 100);  // Kreis: Mitte x, Mitte y, Breite, Höhe
rect(100, 150, 80, 60);        // Rechteck: oben links x, y, Breite, Höhe
line(0, 0, 600, 400);          // Linie: von (0,0) nach (600,400)
triangle(450, 300, 500, 350, 400, 350); // Dreieck: drei Eckpunkte (x, y)
```

## 3. Farben: Mit RGB-Werten, fill() und noStroke() ein erstes Bild malen
```java
size(600, 400);           // Fenstergröße
background(0, 150, 255);  // Himmelblau: Rot, Grün, Blau (je 0-255)

fill(255, 200, 0);        // Füllfarbe Gelb für die nächste Form
ellipse(500, 75, 80, 80); // Sonne

fill(0, 200, 100);        // Füllfarbe Grün
noStroke();               // keinen Rand mehr zeichnen

rect(0, height/2, width, height/2); // Gras: untere Hälfte (height = Höhe, width = Breite)
```

## 4. Ein kleines Gemälde: Viele Formen und Farben zu einer Szene kombinieren
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

## 5. setup() und draw(): Was einmal und was ständig wiederholt läuft, und die Mausposition
```java
void setup() {            // läuft genau 1x am Anfang
  size(600, 400);         // Fenstergröße
  background(255);        // weißer Hintergrund
}

void draw() {             // läuft immer wieder (ca. 60x pro Sekunde)
  ellipse(mouseX, mouseY, 50, 50);  // Kreis an der aktuellen Mausposition
}
```

## 6. Variablen und Bewegung: Einen Kreis animieren und am Rand zurücksetzen
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

## 7. Zufall: Mit random() jedes Mal eine neue Position erzeugen
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

## 8. Maus-Interaktion: Mit if und mousePressed nur bei gedrückter Maustaste zeichnen
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

## 9. Farben als Variable: Farben speichern und per Mausklick mit get() auswählen
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
