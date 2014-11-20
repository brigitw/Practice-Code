PVector loc, vel, acc;
PVector mouse;
int sz=100;

void setup() {
  size(800, 800);
  loc= new PVector (400, 400);
  vel= PVector. random2D();
  acc= new PVector (0, 0);
  mouse= new PVector();
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(0);
  vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);


  if (loc.dist(mouse)<sz/2) {
    fill(100);
    print("TOUCH");
    if (mouse.x> loc.x) {
      vel.x=-abs(vel.x);
    } else { 
      vel.x=abs(vel.x);
    }
    if (mouse.y>=loc.y) {
      vel.y=-abs(vel.y);
    } else { 
      vel.y=abs(vel.y);
    }
  } else {
    fill(255);
    print("nooo");
  }
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }
}

