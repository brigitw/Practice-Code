//delcare location
float locx; 
float locy; 
//delcare velocity
float velx; 
float vely;
//declare acceleration
float accx; 
float accy;
int sz = 100; 


void setup() {
  colorMode(HSB, 360, 255, 255, 255);
  size(800, 800);
  velx=10;
  vely=10;
  locx=width/2;
  locy=height/2;
  accx= random(5, 5);
  accy = random(5, 5);
  background(0);
}


void draw() {
  

  accx= random(-.1, .1);
  accy = random(-.2, .2);

  fill(frameCount%360, 255, 255);
  stroke(frameCount%360, 255, 255);

  velx+=accx;
  vely+=accy;

  locx+=velx;
  locy+=vely;
  
  velx= constrain(velx, -5, 5);
  vely=constrain(vely,-5,5);

  ellipse(locy, locx, sz, sz);

  if (locx-sz/2>width) {
    locx=-sz/2;
  }

  if (locx+sz/2<0) {
    locx=width+sz/2;
  }

  if (locy-sz/2>height) {
    locy=-sz/2;
  }

  if (locx+sz/2<0) {
    locy=height+sz/2;
  }
  
  if (mousePressed){
    velx=random(-5,5);
    vely=random(-5,5);
  }
}

