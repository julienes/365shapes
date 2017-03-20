
float x,y,z;
int r = 100;
float rotate= 0;

void setup(){
  size(500,500, P3D);
  smooth();
}

void draw(){
  rotate += 0.02;
  stroke(5,15,230);
  fill(255);
  strokeWeight(1);
  translate(width/2, height/2);
  rotateX(rotate);
  rotateZ(rotate);
  background(5,15,230);
  beginShape(TRIANGLE_STRIP);
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