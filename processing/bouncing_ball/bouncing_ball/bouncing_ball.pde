float xBal, yBal;
float ysnelheid = 0;
float xsnelheid = .5;
float versnelling = .1;
float wrijvingsfactor = .001;
float botswrijvingsfactor = .3;

void setup() {
  size(800, 200);
  yBal = 0;
  xBal = 0;
}

void draw() {
  background(0);
  fill(255);
  
  ellipse(xBal, yBal, 10, 10);
  
  xBal += xsnelheid;
  yBal += ysnelheid;
  ysnelheid += versnelling;
  
  ysnelheid *= (1 - wrijvingsfactor);
  
  if (yBal > height - 5 && ysnelheid > 0) {
    ysnelheid *= -(1 - botswrijvingsfactor);
  }
  
//  if (yBal >= height - 6 && abs(ysnelheid) < .01) {
//    versnelling = 0;
//    ysnelheid = 0;
//    yBal = height - 5;
//  }
}

void mouseClicked() {
  xBal = mouseX;
  yBal = mouseY;
  ysnelheid = 0;
  xsnelheid = random(-3, 3);
}
