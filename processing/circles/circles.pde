int N = 20;
int DELAY = 5;
int delay = DELAY;
float R = 20;
float a = .005;
float b = 3;

float x, y, d, radius, prevX=mouseX, prevY=mouseY;


void setup() {
  size(960, 700);
  background(0);
}


void draw() {
  noStroke();
  
  colorMode(RGB, 255);
  delay --;
  if (delay <= 0) {
    fill(0, 16);
    rect(0, 0, width, height);
    delay = DELAY;
  }
  
  d = 5 * dist(mouseX, mouseY, prevX, prevY) / dist(0, 0, width, height);
  prevX = mouseX;
  prevY = mouseY;
  
  if (mousePressed) {
    fill(255, 64);
    rect(0, 0, width, height);
  } else {
    colorMode(HSB, 1.0);
    fill(d, .5, 0.8, 16);
  }
  
  for (x = 0; x <= width; x += N) {
    for (y = 0; y <= height; y += N) {
      d = dist(x, y, mouseX, mouseY);
      radius = R * exp(-a * d) + b;
      ellipse(x, y, radius, radius);
    }
  }
}
