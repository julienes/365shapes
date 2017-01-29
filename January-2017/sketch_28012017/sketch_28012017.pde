void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(6,7, 175);
  stroke(255);
  strokeWeight(2);
  for(float x = 100; x<width-100; x+=10){
    for (float y = 100; y<height-100; y+=10){
      pushMatrix();
      translate(x,y);
      float a = atan2(mouseY-y, mouseX-x)*4;
      rotate(a/2);
      line(10,0,10,10);
      popMatrix();
    }
  }
}