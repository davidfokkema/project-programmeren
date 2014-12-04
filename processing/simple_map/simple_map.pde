float x, y;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  stroke(255);
  noFill();
  rect(300, 200, 150, 100);
  x = map(mouseX, 0, width, 300, 450);
  y = map(mouseY, 0, height, 200, 300);
  fill(255);
  ellipse(x, y, 5, 5);
  
  stroke(255, 0, 0);
  noFill();
  rect(300, 400, 150, 100);
  x = map(mouseX, 300, 450, 0, width);
  y = map(mouseY, 400, 500, 0, height);
  fill(255, 0, 0);
  ellipse(x, y, 5, 5);
}
