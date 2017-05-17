float inc = 100;
float scl = 1;
float cols, rows;

float zoff = 0;

void setup(){
  size(500,500);
  cols = floor(400/scl);
  rows = floor(400/scl);
}

void draw(){
  background(6,7,175);
  translate(width/2,50);
  rotate(PI/4);
  scale(0.7);
  float yoff = 0;
  for(float y = 0; y<rows; y+=4){
    float xoff = 0;
    for(float x = 0; x<cols; x+=4){
      float angle = noise(xoff, yoff, zoff) * TWO_PI;
      float r = noise(xoff, yoff) * 255;
      PVector v =  PVector.fromAngle(angle);
      xoff += inc;
      stroke(255);
      pushMatrix();
      translate(x*scl, y*scl);
      if(x>=50 && x<=350 && y>=50 && y<=100){
        rotate(v.heading());
        line(0,0,scl*10,0);
      }else if(x>=300 && x<=350 && y>=50 && y<=350){
        rotate(v.heading());
       line(0,0,scl*10,0);
      }else if(x>=50 && x<=350 && y>=300 && y<=350){
        rotate(v.heading());
       line(0,0,scl*10,0);
      }else if(x>=50 && x<=100 && y>=50 && y<=350){
        rotate(v.heading());
       line(0,0,scl*10,0);
      }else{
      point(0,0);
      }
      popMatrix();
      
    }
    yoff+=inc;
    zoff +=0.05;
  }
}