int N = 20;
float R = 20;
float a = .005;
float b = 3;

float x, y, d, radius;


void setup() {
  size(960, 700);
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
  
  for (x = 0; x <= width; x += N) {
    for (y = 0; y <= height; y += N) {
      d = dist(x, y, mouseX, mouseY);
      radius = R * exp(-a * d) + b;
      ellipse(x, y, radius, radius);
    }
  }
}
