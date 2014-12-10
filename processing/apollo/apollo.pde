int nStars = 50;
float dRot = .1, dThrust = .001, gravityMag = .005, fuel = 100;

PImage apollo, flame, surface;
float x, y, rotation = 0, thrustMag = 0;
int i;

PVector pos, speed, accel, gravity, thrust;


void setup() {
  size(800, 600);
  imageMode(CENTER);
  textAlign(LEFT, TOP);
  textSize(15);

  apollo = loadImage("apollo.png");
  flame = loadImage("flame.png");
  surface = loadImage("lunar_surface.png");
  pos = new PVector(width / 2, 0);
  speed = new PVector(random(-1.5, 1.5), 0);
  accel = new PVector();
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
  image(surface, width / 2, height - surface.height / 2);
}

void drawApollo() {
  pushMatrix();
  translate(pos.x, pos.y);
  rotate(rotation);
  pushMatrix();
  translate(0, 30);
  scale(thrustMag * 50);
  translate(10, 348 / 2);
  image(flame, 0, 0);
  popMatrix();
  image(apollo, 0, 0);
  popMatrix();
}

void simulateMotion() {
  thrust = PVector.fromAngle(rotation - PI / 2);
  thrust.setMag(thrustMag);

  accel.set(gravity);
  if (fuel > 0) {  
    accel.add(thrust);
  }

  speed.add(accel);
  pos.add(speed);

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

