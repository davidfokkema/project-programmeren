float xBal, yBal;
float ysnelheid = 0;
float xsnelheid = 0;
float versnelling = .1;
float wrijvingsfactor = .02;
float botswrijvingsfactor = .3;
boolean flying = false;


void setup() {
  size(800, 200);
  yBal = height - 5;
  xBal = 0;
}

void draw() {
  background(0);
  fill(255);
  stroke(255);

  ellipse(xBal, yBal, 10, 10);

  xBal += xsnelheid;
  yBal += ysnelheid;
  ysnelheid += versnelling;

  if (yBal > height - 5 && ysnelheid > 0) {
    ysnelheid *= -(1 - botswrijvingsfactor);
  }

  if (yBal >= height - 6 && abs(ysnelheid) < .05) {
    ysnelheid = 0;
    yBal = height - 5;
  }

  if (ysnelheid == 0) {
    xsnelheid *= (1 - wrijvingsfactor);
  }
  
  if (!flying) {
    line(xBal, yBal, mouseX, mouseY);
  }
}

void mouseClicked() {
  if (!flying) {
    xsnelheid = .1 * (mouseX - xBal);
    ysnelheid = .1 * -(mouseY - yBal);
    flying = true;
  }
}

void keyPressed() {
  xBal = 0;
  yBal = height - 5;
  ysnelheid = 0;
  xsnelheid = 0;
  flying = false;
}
