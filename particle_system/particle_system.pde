ArrayList<Particle> allMyParticles = new ArrayList<Particle>();
PImage sky;
PImage airplane;
void setup() {
 sky=loadImage("sky.jpg");
 airplane=loadImage("airplane.png");
  noStroke();
  size(sky.width,sky.height);
}

void draw() {
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
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-.01, .01), random(-.1, .1));
    

    sz = random(20, 30);
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, sz, sz);
  
  }
    

  void move() {

    loc.add(vel);
  }
}
