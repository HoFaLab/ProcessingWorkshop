size(600, 400);           // Fenstergröße
background(0, 150, 255);  // Himmelblau: Rot, Grün, Blau (je 0-255)

fill(255, 200, 0);        // Füllfarbe Gelb für die nächste Form
ellipse(500, 75, 80, 80); // Sonne

fill(0, 200, 100);        // Füllfarbe Grün
noStroke();               // keinen Rand mehr zeichnen

rect(0, height/2, width, height/2); // Gras: untere Hälfte (height = Höhe, width = Breite)