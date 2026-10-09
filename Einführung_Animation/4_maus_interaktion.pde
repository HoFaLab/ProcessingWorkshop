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