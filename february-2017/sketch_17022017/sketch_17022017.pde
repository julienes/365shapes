void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(7,11,96);
  for(float x=100; x<width-50; x+=50) {
    for (float y = 100; y<height-50; y+=50){
      fill(255);
      ellipse(x,y,50,50);
      pushMatrix();
      translate(x,y);
      float a = atan2(mouseY-y, mouseX-x);
      rotate(a);
      fill(0);
      ellipse(8,0,20,20);
      popMatrix();
    }
  }
}