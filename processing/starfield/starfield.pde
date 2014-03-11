int N = 300;
float zoom = 1.0, zoom_step = .02;
float COLORFACTOR = 2.;

int i, alpha = 255;
float[] x = new float[N];
float[] y = new float[N];
float[] s = new float[N];
float star_size, z, redness;
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
  draw_starfield();
  
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

void draw_starfield() {
  for (i = 0; i < N; i ++) {
    ellipse(x[i], y[i], s[i], s[i]);
  }
}

void draw_zoomed_starfield(float scale) {
  resetMatrix();
  translate(mouseX, mouseY);
  scale(scale);
  translate(-mouseX, -mouseY);
  
  for (i = 0; i < N; i ++) {
    star_size = s[i] / scale;
    redness = 255 - scale * dist(x[i], y[i], mouseX, mouseY)
                    / COLORFACTOR;
    fill(255, redness, redness);
    ellipse(x[i], y[i], star_size, star_size);
  }
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
