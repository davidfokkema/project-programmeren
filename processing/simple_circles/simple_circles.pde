int N = 50;
int i, j;
float x, y, d;

void setup() {
  size(600, 600);
  noStroke();
  fill(255);
}

void draw() {
  background(0);
  for (i = 1; i <= N; i ++) {
    for (j = 1; j <= N; j ++) {
      x = map(i, 1, N, 0, width);
      y = map(j, 1, N, 0, height);
      d = map(dist(x, y, mouseX, mouseY), 0, 1.5 * width, 10, 0);
      ellipse(x, y, d, d);
    }
  }
}
