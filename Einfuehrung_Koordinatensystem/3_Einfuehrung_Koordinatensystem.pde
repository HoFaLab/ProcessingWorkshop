// Coordinate System Ruler
// Helps visualize the Processing coordinate system

boolean linealAnzeigen = true;  
// boolean linealAnzeigen = false;  

boolean koordinatenAnzeigen = true;
// boolean koordinatenAnzeigen = false;


void setup() {
  size(1200, 800);
  background(220);
  zeichneLineal();

}

void draw() {
  // zeicheFormen();
}


void zeicheFormen() {
  // Farbe  Rot  Grün, Blau
  fill(   255,    0,     0);
  stroke(0);  // Schwarzer Rand


  //   Start x, Start y,    Ende x,    Ende y
  line(0,          0,       1200,      800);          // Linie

  //      position x, position y, radius 1, radius 2
  ellipse(  200,          200,       100,       100);  // Kreis oben links
  // ellipse(  1000,         700,       100,       100);  // Kreis
  
  
  // Rechteck
  //   x oben links,  y oben links,  Breite,  Höhe
  rect(450,           350,           100,     200);        // Rechteck
  
  
  // Dreieck
  //       x Ecke 1, y Ecke 1,    x Ecke 2, y Ecke 2,     x Ecke 3, y Ecke 3 
  // triangle(800,      100,         1000,     100,          900,      200); // Dreieck
}
