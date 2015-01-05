
class Ball {
  float sz; 
  PVector loc, vel, acc;


  Ball() {
    sz=(176);
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(10, 17);
    acc=new PVector(.1, 2);
    
  }
  void display() {
   
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }

  void bounce() {

    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}

