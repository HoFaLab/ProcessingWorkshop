void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  // Transparenter Hintergrund für Trail-Effekt
  fill(0, 5);
  rect(0, 0, width, height);
  
  // Zufällige Kreise
  fill(random(100, 255), random(100, 255), random(100, 255), 150);
  noStroke();
  float x = width/2 + cos(frameCount * 0.05) * 200;
  float y = height/2 + sin(frameCount * 0.05) * 200;
  ellipse(x, y, random(20, 50), random(20, 50));
}

void mousePressed() {
  background(0);
}