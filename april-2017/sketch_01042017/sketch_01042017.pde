float inc = 0.03;
float scl = 4;
float cols, rows;

float zoff = 0;

void setup(){
  size(500,500);
  cols = floor(width/scl);
  rows = floor(height/scl);
}

void draw(){
  background(6,7,175);
  float yoff = 0;
  for(float y = 30; y<rows-30; y++){
    float xoff = 0;
    for(float x = 30; x<cols-30; x++){
      float index = (x+y*width) * 4;
      float angle = noise(xoff, yoff, zoff) * TWO_PI;
      float r = noise(xoff, yoff) * 255;
      PVector v =  PVector.fromAngle(angle);
      xoff += inc;
      stroke(255);
      pushMatrix();
      translate(x*scl, y*scl);
      rotate(v.heading());
      line(0,0,scl,0);
      popMatrix();
      
    }
    yoff+=inc;
    zoff +=0.0005;
  }
}