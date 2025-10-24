# Processing Cheatsheet

## Programm-Struktur

```java
void setup() {
  // Läuft 1x am Anfang
  size(600, 400);  // Fenstergröße
}

void draw() {
  // Läuft immer wieder (Loop)
  // Dein Code hier
}
```

---

## Formen zeichnen

### Grundformen
```java
ellipse(x, y, breite, höhe);      // Kreis/Ellipse
rect(x, y, breite, höhe);         // Rechteck
line(x1, y1, x2, y2);             // Linie
triangle(x1, y1, x2, y2, x3, y3); // Dreieck
point(x, y);                      // Punkt
```

### Koordinaten-System
- `(0, 0)` ist **oben links**
- `x` geht nach **rechts**
- `y` geht nach **unten**
- `width` = Fensterbreite
- `height` = Fensterhöhe

---

## Farben

### RGB-Farben (0-255)
```java
background(r, g, b);    // Hintergrundfarbe  r=rot, g=grün, b=blau
fill(r, g, b);          // Füllfarbe
stroke(r, g, b);        // Linienfarbe
```

### Graustufen (0-255)
```java
background(150);        // Grau
fill(255);             // Weiß
stroke(0);             // Schwarz
```

### Transparenz (optional)
```java
fill(255, 0, 0, 100);  // Rot mit Transparenz
```

### Ohne Füllung/Linie
```java
noFill();              // Keine Füllung
noStroke();            // Keine Linie
```

---

## Interaktivität

### Maus
```java
mouseX              // X-Position der Maus
mouseY              // Y-Position der Maus
mousePressed        // true wenn Maus gedrückt
mouseButton         // LEFT, RIGHT, CENTER
```

### Tastatur


### Events (in eigenen Funktionen)
```java
// Maus geklickt
void mousePressed() {
  // Code wenn Maus geklickt wird
}

// Taste gedrückt
void keyPressed() {
  // diese Funktion wird automatisch ausgeführt, wenn eine Taste gedrückt
  if (key == 'b') {
    // Welche Taste? (z.B. 'a', 'b') 
    background(0, 0, 255)  // mach den hintergrund blau
  }
} 
```

---

## Variablen & Bewegung

### Variable erstellen
```java
float x = 100;         // Zahl mit Komma
int punkte = 0;        // Ganze Zahl
boolean aktiv = true;  // true oder false
```

### Variable ändern
```java
x = x + 1;    // x um 1 erhöhen
x += 1;       // Kurzform
x++;          // Noch kürzer (nur +1)
```

### Zufallszahlen
```java
random(255);           // Zahl zwischen 0 und 255
random(50, 100);       // Zahl zwischen 50 und 100
```

---

## Bedingungen

### If-Abfrage
```java
if (x > width) {
  x = 0;
}

if (mousePressed) {
  fill(255, 0, 0);
} else {
  fill(0, 0, 255);
}
```

### Vergleiche
```java
>   // größer als
<   // kleiner als
==  // gleich
!=  // ungleich
>=  // größer oder gleich
<=  // kleiner oder gleich
```

---

## Nützliche Befehle

### Text
```java
textSize(32);
fill(0);
text("Hallo!", 50, 50);
```

### Mathematik
```java
sin(winkel)       // Sinus
cos(winkel)       // Kosinus
abs(x)            // Absoluter Wert
sqrt(x)           // Quadratwurzel
pow(x, 2)         // Potenz (x²)
```

### Spezielle Variablen
```java
frameCount        // Wie oft draw() gelaufen ist
frameRate(30);    // FPS einstellen
```

---

## Häufige Fehler

❌ **Fehlt ein Semikolon?**
```java
ellipse(100, 100, 50, 50)  // FEHLER
ellipse(100, 100, 50, 50); // RICHTIG
```

❌ **Klammer vergessen?**
```java
void setup() {
  size(400, 400);
// } // FEHLER - Klammer fehlt
}   // RICHTIG
```

❌ **Groß-/Kleinschreibung?**
```java
Background(255);  // FEHLER
background(255);  // RICHTIG
```

❌ **Koordinaten außerhalb?**
- Prüfe ob `x` zwischen `0` und `width` ist
- Prüfe ob `y` zwischen `0` und `height` ist

---

## Schnelle Beispiele

### Kreis folgt Maus
```java
void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  ellipse(mouseX, mouseY, 50, 50);
}
```

### Zeichenprogramm
```java
void setup() {
  size(600, 400);
  background(255);
}

void draw() {
  if (mousePressed) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}
```

### Bewegter Ball
```java
float x = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(220);
  ellipse(x, 200, 40, 40);
  x = x + 2;
  
  if (x > width) {
    x = 0;
  }
}
```

---

**💡 Tipp:** Experimentiere! Ändere Zahlen und schau was passiert!

**🎨 Pro-Tipp:** Nutze `random()` für überraschende Effekte!

**🐛 Debug-Tipp:** Lies Fehlermeldungen - sie zeigen die Zeile mit dem Fehler!