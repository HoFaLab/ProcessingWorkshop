void setup() {            // läuft genau 1x am Anfang
  size(600, 400);         // Fenstergröße
  background(255);        // weißer Hintergrund
}

void draw() {             // läuft immer wieder (ca. 60x pro Sekunde)
  ellipse(mouseX, mouseY, 50, 50);  // Kreis an der aktuellen Mausposition
}