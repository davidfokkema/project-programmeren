float padX, padY, balX, balY, speedX, speedY;
float padWidth = 100, padHeight = 10;
boolean gameOver = false;
int score = 0;

void setup() {
  size(600, 400);
  padY = height - 20;
  
  balY = 0;
  balX = random(0, width);
  speedX = random(-5, 5);
  speedY = random(1, 5);
}

void draw() {
  if (gameOver) {
    background(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("Game Over!", width / 2, height / 2);
  } else {
    background(0);
    fill(255);
    padX = mouseX;
    
    textAlign(RIGHT, TOP);
    textSize(26);
    text(score, width - 20, 20);
    
    rectMode(CENTER);
    rect(padX, padY, padWidth, padHeight);
    
    ellipse(balX, balY, 15, 15);
    
    balX += speedX;
    balY += speedY;
    
    if (balX < 0 || balX > width) {
      speedX *= -1;
    }
    
    if (balY < 0) {
      speedY *= -1;
    }
    
    if (balY > height) {
      gameOver = true;
    }
    
    if (balY <= padY + padHeight / 2 && balY >= padY - padHeight / 2 && balX > padX - padWidth / 2 && balX < padX + padWidth / 2) {
      speedY = random(-5, -1);
      speedX = random(-5, 5);
      score ++;
    }
  }
}

