int N = 12;
float leftAngle, rightAngle;

void setup() {
  size(800, 600);
  strokeWeight(2);
}

void draw() {
  background(255);

  leftAngle = map(mouseX, 0, width, -90, 0);
  rightAngle = map(mouseY, 0, height, 0, 90);

  translate(width/2, height);
  drawTree(175, -90, 1);
}

void drawTree(float len, float angle, int level) {
  if (level <= N) {
    rotate(radians(angle));
    line(0, 0, len, 0);
    translate(len, 0);
    pushMatrix();
    drawTree(len*0.75, leftAngle, level+1);
    popMatrix();
    pushMatrix();
    drawTree(len*0.66, rightAngle, level+1);
    popMatrix();
  }
}

void keyPressed() {
  if (key == '+') {
    N ++;
  } else if ((key == '-') && (N > 1)) {
    N --;
  }
}

