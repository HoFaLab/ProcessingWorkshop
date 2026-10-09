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