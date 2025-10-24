// Display mouse coordinates in real-time
void mouseMoved() {
  // Redraw everything
  background(220);
  
  if (linealAnzeigen) {
  zeichneLineal();
  }
  
  if (koordinatenAnzeigen) {
    // Show current mouse position
    fill(0, 0, 255);
    noStroke();
    ellipse(mouseX, mouseY, 10, 10);
    
    fill(0, 0, 255);
    textSize(18);
    String coords = "(" + mouseX + ", " + mouseY + ")";
    text(coords, mouseX + 15, mouseY - 10);
  }
}
