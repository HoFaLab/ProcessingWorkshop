color currentColor;
int buttonSize = 50;

void setup() {
  size(800, 600);
  background(255);
  currentColor = color(0);
}

void draw() {
  // Zeichnen mit Maus
  if (mousePressed && mouseY > 70) {
    fill(currentColor);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
  }
  
  // Buttons zeichnen
  drawColorButtons();
  
  // Anzeige für Tasten
  fill(0);
  textSize(10);
  text("Tasten: R=Rot G=Grün B=Blau S=Schwarz W=Weiß C=Löschen", 10, 580);
}

void drawColorButtons() {
  fill(255, 0, 0);
  rect(10, 10, buttonSize, buttonSize);
  
  fill(0, 255, 0);
  rect(70, 10, buttonSize, buttonSize);
  
  fill(0, 0, 255);
  rect(130, 10, buttonSize, buttonSize);
  
  fill(0);
  rect(190, 10, buttonSize, buttonSize);
  
  fill(255);
  stroke(0);
  rect(250, 10, buttonSize, buttonSize);
  noStroke();
  
  // Aktuelle Farbe anzeigen
  fill(currentColor);
  stroke(0);
  rect(320, 10, buttonSize, buttonSize);
  noStroke();
}

void mousePressed() {
  if (mouseY < 70) {
    if (mouseX > 10 && mouseX < 60) currentColor = color(255, 0, 0);
    else if (mouseX > 70 && mouseX < 120) currentColor = color(0, 255, 0);
    else if (mouseX > 130 && mouseX < 180) currentColor = color(0, 0, 255);
    else if (mouseX > 190 && mouseX < 240) currentColor = color(0);
    else if (mouseX > 250 && mouseX < 300) currentColor = color(255);
  }
}

void keyPressed() {
  if (key == 'r') currentColor = color(255, 0, 0);
  if (key == 'g') currentColor = color(0, 255, 0);
  if (key == 'b') currentColor = color(0, 0, 255);
  if (key == 's') currentColor = color(0);
  if (key == 'w') currentColor = color(255);
  if (key == 'c') background(255);
}