float inc = 0.1;
float scl = 11;
float cols, rows;
float angle;
float zoff= 0;
void setup(){
  size(500,500);
  smooth();
  cols = floor(width/scl);
  rows = floor(height/scl);
}

void draw(){
  background(5,15,230);
  float yoff = 0;
  for(float y = 7; y< rows-5; y+=0.5){
    float xoff = 0;
    for(float x = 10; x< cols-5; x+=0.5){
      float index = (x+y*width)*4;
      float angle = noise(xoff,yoff, zoff)*TWO_PI;
      PVector v = PVector.fromAngle(angle);
      xoff+=inc;
      stroke(255);
      pushMatrix();
      beginShape(POINTS);
      translate(x * scl, y * scl);
      strokeWeight(2);
      rotate(v.heading());
      //line(0,0,scl,0);
      vertex(scl,scl);
      endShape();
      popMatrix();
    }
    yoff +=inc;
    zoff += 0.001;
  }
}