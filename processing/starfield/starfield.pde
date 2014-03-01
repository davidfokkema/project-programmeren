int N = 300;
float zoom = 1.0, zoom_step = .02;

int i, alpha = 255;
float[] x = new float[N];
float[] y = new float[N];
float[] s = new float[N];
float size, z;
boolean draw_connects = false;


void setup() {
  size(960, 700);
  for (i = 0; i < N; i ++) {
    x[i] = random(0, width);
    y[i] = random(0, height);
    s[i] = random(1, 9);
  }
}


void draw() {
  background(0);
  noStroke();
  
  fill(255, alpha);
  draw_starfield(1.0);
  
  if (zoom != 1.0) {
    if (draw_connects) {
      fill(255, 0, 0, 64);
      for (z = 1.0 + zoom_step; z < zoom; z += zoom_step) {
        draw_zoomed_starfield(z);
      }
    }
    fill(255, 0, 0);
    draw_zoomed_starfield(zoom);
  }
}

void draw_starfield(float scale) {
  for (i = 0; i < N; i ++) {
    size = s[i] / scale;
    ellipse(x[i], y[i], size, size);
  }
}

void draw_zoomed_starfield(float scale) {
  resetMatrix();
  translate(mouseX, mouseY);
  scale(scale);
  translate(-mouseX, -mouseY);
  draw_starfield(scale);
}

void keyPressed() {
  if (key == '+' || key == '=')
    zoom += .01;
  else if (key == '-' && zoom > 1.0)
    zoom -= .01;
  else if (key == '0')
    zoom = 1.0;
  else if (key == '9') {
    if (draw_connects)
      draw_connects = false;
    else
      draw_connects = true;
  }
  else if (key == '1') {
    if (alpha == 255)
      alpha = 64;
    else
      alpha = 255;
  } 
}
