
void zeichneLineal() {
  textSize(18);
  
  // X-Axis Ruler (horizontal, at top)
  stroke(0);
  strokeWeight(2);
  line(0, 0, width, 0); // Main line at top
  
  // X-axis tick marks and labels
  for (int x = 0; x <= width; x += 50) {
    if (x % 100 == 0) {
      // Major tick marks every 100 pixels
      strokeWeight(2);
      line(x, 0, x, 20);
      fill(0);
      text(x, x - 10, 35);
    } else {
      // Minor tick marks every 50 pixels
      strokeWeight(1);
      line(x, 0, x, 10);
    }
  }
  
  // Y-Axis Ruler (vertical, at left)
  strokeWeight(2);
  line(0, 0, 0, height); // Main line at left
  
  // Y-axis tick marks and labels
  for (int y = 0; y <= height; y += 50) {
    if (y % 100 == 0) {
      // Major tick marks every 100 pixels
      strokeWeight(2);
      line(0, y, 20, y);
      fill(0);
      text(y, 25, y + 5);
    } else {
      // Minor tick marks every 50 pixels
      strokeWeight(1);
      line(0, y, 10, y);
    }
  }
  
  // Draw origin marker
  fill(255, 0, 0);
  noStroke();
  ellipse(0, 0, 8, 8);
  fill(255, 0, 0);
  textSize(12);
  text("(0,0)", 5, 50);
  
  // Add grid lines (optional - lighter)
  stroke(200);
  strokeWeight(1);
  for (int x = 50; x < width; x += 50) {
    line(x, 0, x, height);
  }
  for (int y = 50; y < height; y += 50) {
    line(0, y, width, y);
  }
  
  // Show current mouse position
  fill(0, 0, 255);
  textSize(14);
  text("Move your mouse to see coordinates", width/2 - 120, height - 20);
}
