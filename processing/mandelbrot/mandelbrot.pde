int i, j;
float x0, y0, x, y, xt;
color c;
boolean changed = true;

int iter, max_iter = 100;

void setup() {
  size(1000, int(1000 / 3.5 * 2));
}

void draw() {
  if (changed) {
    for (i = 0; i < width; i ++) {
      for (j = 0; j < height; j ++) {
        x0 = map(i, 0, width, -2.5, 1);
        y0 = map(j, 0, height, -1, 1);

        x = 0.; 
        y = 0.;
        iter = 0;
        while ( (x*x + y*y < 4) && (iter < max_iter)) {
          xt = x*x - y*y + x0;
          y = 2*x*y + y0;
          x = xt;
          iter ++;
        }
        c = int(map(log(iter), 0, log(max_iter), 255, 0));
        set(i, j, color(c));
      }
    }
    changed = false;
  }
}

void keyPressed() {
  if (key == '+') {
    max_iter ++;
    changed = true;
  } else if ((key == '-') && (max_iter > 1)) {
    max_iter --;
    changed = true;
  }
}
