int i;
boolean show_mouse = false;

void setup() {
  size(800, 600);
  stroke(255);
  noFill();
  strokeWeight(2);
}

void draw() {
  background(0);
  draw_moire(width / 2, height / 2);
  if (show_mouse) {
    draw_moire(mouseX, mouseY);
  }
}

void draw_moire(int x, int y) {
  for (i = 0; i <= 1000; i += 10) {
    ellipse(x, y, i, i);
  }
}

void mouseClicked() {
  if (show_mouse) {
    show_mouse = false;
  }
  else {
    show_mouse = true;
  }
}
