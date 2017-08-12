float a = 100;
float b = 50;
float c = 2*sqrt(a*b);
float t = 0;
float x,y,z;
float n = 50;
float angle;

void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(3);
  stroke(255);
}

void draw(){
  background(6,7,175);
  angle+=0.03;
  translate(width/2, height/2);
  rotateY(angle);
  rotateZ(angle);
  rosace();
}

void rosace(){
  for(float i = 0; i<=100; i+=0.01){
    float t = map(i, 0, 100, 0, TWO_PI);
    x = a * cos(n*t)*cos(t);
    y = a * cos(n*t)*sin(t);
    z = b * cos(n*t);
    point(x,y,z);
  }
}