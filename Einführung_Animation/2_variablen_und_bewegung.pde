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