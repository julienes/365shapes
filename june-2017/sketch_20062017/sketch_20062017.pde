float x,y,z;
int a = 2;
int R = 100;
float r = 0;

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(6,7,175);
}

void draw(){
  lights();
  background(6,7,175);
  r+=0.01;
  translate(width/2, height/2);
  rotateY(r);
  rotateX(r);
  for(float t = 0; t<=TWO_PI; t+=0.01){
  x = 20*(3*cos(t)+5*cos(t*3));
  y = 20*(3*sin(t)+5*sin(t*3));
  z = 20*(sin((5*t)/2)*sin(3*t)+sin(4*t)-sin(6*t));
  pushMatrix();
  translate(x,y,z);
  box(10);
  popMatrix();
  }
}