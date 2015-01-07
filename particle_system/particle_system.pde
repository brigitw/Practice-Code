//Initialize variables and images
ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
PImage sky;
PImage airplane;

void setup() {
  //load images
  sky=loadImage("sky.jpg");
  airplane=loadImage("airplane.png");
//establish size of display
  size(sky.width, sky.height);
}

void draw() {
  //draw particles and background
  noStroke();
  if (mousePressed) {
    allMyParticles.add(new Particle());
  }
  background(sky);


  for (int i = allMyParticles.size ()-1; i >= 0; i--) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
  }
  image(airplane, mouseX-100, mouseY-85);
}

class Particle {
  //initialize variables
  PVector loc, vel, acc;
  float sz;

  Particle() {
    //establish location and velocity of particles
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-.01, .01), random(-.1, .1));
    //establish size of particles
    sz = random(20, 30);
  }

  void display() {
    //establish color of particles and their shape and location
    fill(255);
    ellipse(loc.x, loc.y, sz, sz);
  }


  void move() {
    //make particles move
    loc.add(vel);
  }
}

