         GravityBall[] cindy = new GravityBall[100];

void setup() {
  size(displayWidth, displayHeight);
  for (int i=0; i<cindy.length; i++) {
    cindy[i] = new GravityBall();
  }
}


void draw() {
  background(0);
  for (int i=0; i<cindy.length; i++) {
    cindy[i].display();
    cindy[i].move();
    cindy[i].bounce();
  }
}

class GravityBall {
  PVector loc, vel, acc;
  float sz;


GravityBall() {
  loc = new PVector(random(sz, width-sz), random(height/2));
  vel = new PVector(0, 0);
  acc = new PVector (0, .5);
  sz= 30;
}

void display() {
  noStroke();
  fill(10, 150, 255);
  ellipse(loc.x, loc.y, sz, sz);
}

void move() {
  vel.add(acc);
  loc.add(vel);
}

void bounce() {
  if (loc.y>height-sz/2) {
    loc.y = height-sz/2;
    vel.y=-abs(vel.y);
  }
}
}
