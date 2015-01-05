Ball b;

void setup(){
  size(800, 600);
  background(0);
  b= new Ball();
}

void draw(){
strokeWeight(15);

  fill(random(255), random(100), random(210));
  
  b.display();
  b.move();
  b.bounce();
  
}


