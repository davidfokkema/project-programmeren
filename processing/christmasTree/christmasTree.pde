int N = 12;
float leftAngle, rightAngle;

void setup() {
  size(800, 600);
  strokeWeight(2);
}

void draw() {
  randomSeed(0);
  background(255);

  leftAngle = map(mouseX, 0, width, -90, 0);
  rightAngle = map(mouseY, 0, height, 0, 90);

  translate(width/2, height);
  drawTree(175, -90, 1);
}

void drawTree(float len, float angle, int level) {
  stroke(0, 64, 0);
  if (level <= N) {
    rotate(radians(angle));
    line(0, 0, len, 0);
    translate(len, 0);
    drawDecoration();
    pushMatrix();
    drawTree(len*0.75, leftAngle, level+1);
    popMatrix();
    pushMatrix();
    drawTree(len*0.66, rightAngle, level+1);
    popMatrix();
  }
}

void drawDecoration() {
  float p, r, g, b;
  
  p = random(1);
  if (p < .1) {
    noStroke();
    r = random(255);
    g = random(255);
    b = random(255);
    fill(r, g, b);
    ellipse(0, 0, 15, 15);
  }
}

void keyPressed() {
  if (key == '+') {
    N ++;
  } else if ((key == '-') && (N > 1)) {
    N --;
  }
}

