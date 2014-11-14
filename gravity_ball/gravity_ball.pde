float x;
float y;
float locx;
float locy;
float velx;
float vely;
float gravity;
int sz=50;



void setup() {
  size(800, 800);
  background(0);
  x=width/2;
  y=width/2;
  gravity=9.8;
  velx=0;
  vely=0;
  vely+=gravity;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  x+=velx;
  y+=vely;

  if (y+sz/2 > height) {
    y=height-sz/2;
    vely=-abs(vely);
  }
}

