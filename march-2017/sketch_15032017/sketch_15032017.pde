
float x,y,z;
int r = 150;
float rotate= 0;

void setup(){
  size(500,500, P3D);
  smooth();
}

void draw(){
  rotate +=0.05;
  stroke(255);
  noFill();
  strokeWeight(2);
  translate(width/2, height/2);
  rotateX(rotate);
  background(6,7,175);
  beginShape(POINTS);
  for(float x = -200; x<=200; x+=2){
    for(float y = -200; y<=200; y+=2){
      for(float z = -200; z<=200; z+=2){
        if((x*x)+(y*y)+(z*z) == r * r){
          vertex(x,y,z);
        }
      }
    }
  }
  endShape();
}  