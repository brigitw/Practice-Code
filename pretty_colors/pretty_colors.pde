void setup() {
  colorMode(HSB, 360, 255, 255, 255);
  size(800, 800);
  background(0);
}
  
  void draw(){
     noStroke();
    fill(frameCount%360, 255, 255, 50);
   ellipse(mouseX, mouseY, 10, 300); 
  }
  
