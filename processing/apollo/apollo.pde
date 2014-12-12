// aantal sterren op het scherm
int nStars = 50;

// aantal constantes:
// draaihoek als je links- of rechtsom draait
// verandering in voortstuwing als je meer of minder gas geeft
// grootte van de zwaartekracht
// brandstof die je bij je hebt
float dRot = .1, dThrust = .001, gravityMag = .005, fuel = 100;

// de afbeeldingen
PImage apollo, flame, surface;

// de positie en rotatie van de lander en de stuwkracht
float x, y, rotation = 0, thrustMag = 0;

int i;

// vectoren:
// positie
// snelheid
// versnelling
// zwaartekracht
// stuwkracht
PVector pos, speed, accel, gravity, thrust;


void setup() {
  size(800, 600);
  imageMode(CENTER);
  textAlign(LEFT, TOP);
  textSize(15);

  apollo = loadImage("apollo.png");
  flame = loadImage("flame.png");
  surface = loadImage("lunar_surface.png");
  
  // begin halverwege het scherm
  pos = new PVector(width / 2, 0);
  // random snelheid naar links of rechts
  speed = new PVector(random(-1.5, 1.5), 0);
  // versnelling gaan we nog uitrekenen
  accel = new PVector();
  // zwaartekracht staat omlaag
  gravity = new PVector(0, gravityMag);
}

void draw() {
  background(0);
  
  drawStars();
  drawSurface();
  simulateMotion();
  drawApollo();

  text("Snelheid: " + nf(speed.mag(), 0, 3), 5, 5);
  text("Brandstof: " + nf(fuel, 3, 1), 5, 25);
}

void drawStars() {
  // teken random sterren op het scherm
  
  float x, y, r;

  randomSeed(0);
  fill(255);

  for (i = 0; i < nStars; i ++) {
    x = random(0, width);
    y = random(0, height);
    r = random(0, 5);
    ellipse(x, y, r, r);
  }
}

void drawSurface() {
  // teken het oppervlak
  image(surface, width / 2, height - surface.height / 2);
}

void drawApollo() {
  // teken de lander, heel hoopje transformaties
  // let op: transformaties werken andersom:
  // de laatste transformatie wordt éérst gedaan!
  
  pushMatrix();
  // verplaats naar de positie van de lander
  translate(pos.x, pos.y);
  // roteer de lander
  rotate(rotation);
  
  pushMatrix();
  // verplaats naar de onderkant van de lander
  // hier komt het vlammetje straks
  translate(0, 30);
  // schaal het vlammetje met hoe groot de stuwkracht is
  // grote kracht: groot vlammetje
  // kleine kracht: klein vlammetje
  scale(thrustMag * 50);
  // verplaats naar het midden van het plaatje van het vlammetje
  translate(10, 348 / 2);
  // teken het vlammetje
  image(flame, 0, 0);
  popMatrix();
  
  // het stukje hierboven tussen push- en popMatrix() telt niet
  // meer mee
  // we hebben nu dus weer alléén de translatie en rotatie van de lander
  // teken de lander
  image(apollo, 0, 0);
  popMatrix();
}

void simulateMotion() {
  // bereken de stuwkracht vector
  thrust = PVector.fromAngle(rotation - PI / 2);
  thrust.setMag(thrustMag);

  // de versnelling is gelijk aan de zwaartekrachtsversnelling
  accel.set(gravity);
  if (fuel > 0) {  
    // als we brandstof hebben: de stuwkracht zorgt óók voor
    // versnelling
    accel.add(thrust);
  }

  // de snelheid is de oude snelheid plus de versnelling
  speed.add(accel);
  // de positie is de oude positie plus de snelheid
  pos.add(speed);

  // de brandstof wordt minder
  fuel -= thrustMag * 10;
  if (fuel < 0) {
    fuel = 0;
    thrustMag = 0;
  }
}

void keyPressed() {

  if (key == CODED) {
    if (keyCode == LEFT) {
      rotation -= dRot;
    } else if (keyCode == RIGHT) {
      rotation += dRot;
    } else if (keyCode == UP) {
      thrustMag += dThrust;
    } else if (keyCode == DOWN) {
      thrustMag -= dThrust;
      if (thrustMag < 0) {
        thrustMag = 0;
      }
    }
  }
}

