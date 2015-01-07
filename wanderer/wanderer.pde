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

PVector x, vel, acc; 


void setup() {
  colorMode(HSB, 360, 255, 255, 255);
  //establish size of display
  size(800, 800);
  //establish velocities
  velx=10;
  vely=10;
  
  locx=width/2;
  locy=height/2;
  //establish acceleration
  accx= random(5, 5);
  accy = random(5, 5);
  background(0);
}


void draw() {
  
//give wanderer acceleration
  accx= random(-.1, .1);
  accy = random(-.2, .2);
//give the wanderer its color 
  fill(frameCount%360, 255, 255);
  stroke(frameCount%360, 255, 255);
//make the wanderer move
  velx+=accx;
  vely+=accy;

  locx+=velx;
  locy+=vely;
  
  velx= constrain(velx, -5, 5);
  vely=constrain(vely,-5,5);
//draw wandering ellipse
  ellipse(locy, locx, sz, sz);
//stop ellipse from disapearing when it leaves the screen
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
  //change velocity when mouse is clicked
  if (mousePressed){
    velx=random(-5,5);
    vely=random(-5,5);
  }
}

