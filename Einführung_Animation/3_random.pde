void setup() {
  size(600, 400);         // Fenstergröße
}

void draw() {
  background(255, 105, 180);  // Gesamte Fläche pink übermalen
  // random(600) = Zufallszahl zwischen 0 und 600, jedes Mal eine neue Position
  ellipse(random(600), random(200), 50, 50); 
}