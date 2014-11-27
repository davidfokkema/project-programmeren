boolean gameOver = false;
float x, y, r, speed;
int score = 0;

int minR = 30, maxR = 100;
float speedIncrease = 1.1;

void setup() {
  size(800, 600);
  stroke(255);
  fill(255);
  ellipseMode(RADIUS);
  textAlign(CENTER, CENTER);
  textSize(26);

  x = random(0, width);
  y = random(0, height);
  r = random(minR, maxR);
  speed = .1;
}

void draw() {
  if (!gameOver) {
    background(0);

    text(score, width / 2, 10);

    ellipse(x, y, r, r);
    line(0, mouseY, width, mouseY);
    line(mouseX, 0, mouseX, height);

    if (mousePressed) {
      if (dist(x, y, mouseX, mouseY) <= r) {
        score ++;
        x = random(0, width);
        y = random(0, height);
        r = random(minR, maxR);
        speed *= speedIncrease;
      }
    }

    r -= speed;

    if (r <= 1) {
      gameOver = true;
    }
  } else {
    background(255, 0, 0);
    text(score, width / 2, 10);
    text("Game Over!", width / 2, height / 2);

    if (keyPressed) {
      x = random(0, width);
      y = random(0, height);
      r = random(minR, maxR);
      speed = .1;
      gameOver = false;
      score = 0;
    }
  }
}

