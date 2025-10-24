void setup() {
  size(800, 400);
}

void draw() {
  background(220);

  stroke(0, 100, 255);
  float prevX = 0;
  float prevY = height/2 + sin((0 + frameCount*4) * 0.05) * 1;
  for (float x = 5; x < width; x += 5) {
    float y = height/2 + sin((x + frameCount*4) * 0.02) * 100;
    line(prevX, prevY, x, y);
    prevX = x;
    prevY = y;
  }
}