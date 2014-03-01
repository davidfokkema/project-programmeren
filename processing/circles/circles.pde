int N = 20;
float R = 20;
float a = .005;
float b = 3;

int i, j;
float x, y, d, radius;


void setup() {
  size(1280, 800);
  background(0);
}


void draw() {
  noStroke();
  
  fill(0, 16);
  rect(0, 0, width, height);
  
  if (mousePressed) {
    fill(255, 64);
    rect(0, 0, width, height);
  } else
    fill(255);
  
  for (i = 0; i <= width; i += N) {
    for (j = 0; j <= height; j += N) {
      // x = map(i, 0, N, 0, width);
      // y = map(j, 0, N, 0, height);
      x = i;
      y = j;
      d = dist(x, y, mouseX, mouseY);
      radius = R * exp(-a * d) + b;
      ellipse(x, y, radius, radius);
    }
  }
}
