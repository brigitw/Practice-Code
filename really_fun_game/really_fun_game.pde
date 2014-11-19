PVector loc, vel, acc;
int sz=100;

void setup(){
  size(800, 800);
  loc= new PVector (400, 400);
  vel= PVector. random2D();
  acc= new PVector (0,0);
  
}

void draw(){
  background(0);
  vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
  
  if (dist(mouseX, mouseY, loc.x, loc.y)>sz/2){
    fill(0);
  }
    else{
    fill(255);}
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }

}


