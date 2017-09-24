float inc = 0.08;
float scl = 4;
float cols, rows;

float zoff = 0;

void setup(){
  size(500,500, P3D);
  cols = floor(width/scl);
  rows = floor(height/scl);
  strokeWeight(3);
}

void draw(){
  background(6,7,175);
  translate(width/2+50, height/2);
  scale(0.7);
  float yoff = 0;
  for(float y = 30; y<rows-30; y++){
    float xoff = 0;
    for(float x = 30; x<cols-30; x++){
      float angle = noise(xoff, yoff, zoff) * TWO_PI;
      PVector v =  PVector.fromAngle(angle);
      scl = dist(width/2, height/2, x, y);
      float cc = map(scl, 0, 250, 0, 3);
      xoff += inc;
      stroke(255);
      pushMatrix();
      translate(x*cos(angle)*cc, y*sin(angle)*cc);
      rotate(v.heading());
      point(0,0,cc);
      popMatrix();
      
    }
    yoff+=inc;
    zoff +=0.0005;
  }
}