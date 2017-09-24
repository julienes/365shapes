int n = 2;
int a = 100;
int b = 100;
float ang = 0;

void setup(){
  size(500, 500, P3D);
  smooth();
  stroke(255);
  strokeWeight(10);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  pushMatrix();
  rotateY(ang);
  crown();
  ang+=0.02;
  popMatrix();
  pushMatrix();
  rotateX(ang);
  crown();
  ang+=0.02;
  popMatrix();
  pushMatrix();
  rotateZ(ang);
  crown();
  ang+=0.02;
  popMatrix();
}


void crown(){
  beginShape(LINES);
  for(int i = 0; i <= 1000; i++){
    float angle = map(i, 0, 1000, 0, TWO_PI);
    float x = a * cos(angle);
    float y = a * sin(angle);
    float z = b * cos(n*angle);
    vertex(x,y,z);
  }
  endShape();
}