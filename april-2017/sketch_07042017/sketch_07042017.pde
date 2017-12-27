float inc = 0.1;
float scl = 3;
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
  stroke(255);
  for(float y = 30; y<rows-30; y++){
    float xoff = 0;
    for(float x = 50; x<cols-50; x++){
      float angle = random(yoff, zoff)*10;
      PVector v =  PVector.fromAngle(angle);
      xoff += inc;
      pushMatrix();
      translate(x*scl, y*scl);
      rotate(v.heading());
      line(0,0,scl,0);
      popMatrix();
      
    }
    yoff+=inc;
    zoff +=0.001;
  }

}