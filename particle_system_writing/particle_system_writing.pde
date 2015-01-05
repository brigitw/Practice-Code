ArrayList<Particle> allMyParticles = new ArrayList<Particle>();

void setup() {
  
  noStroke();
  size(displayWidth, displayHeight);
}

void draw() {
  background(0);
  frameRate(50);
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }

  ;

  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
  }
}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-.0001, .0001), random(-.0001, .0001));
acc = new PVector(-.0001, .0001);
    sz = random(1, 50);
  }

  void display() {
 
    fill(random(255), random(255), random(255), random(50, 150));
    ellipse(loc.x, loc.y, sz, sz);
  }


  void move() {
    vel.sub(acc);
    loc.add(vel);
  }
}
