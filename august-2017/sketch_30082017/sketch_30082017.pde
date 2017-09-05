int R = 100;
int r = 50;
float n = 10;
float x, y, z;
float speed = 0.02;
int total = 500;
float angle = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(5);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  for(int i = 0; i < total; i++){
    float t = map(i, 0, total, 0, TWO_PI);
    x = (R + r * cos(n*t))*cos(t);
    y = (R + r * cos(n*t))*sin(t);
    z = r*sin(n*t);
    point(x,y,z);
  }
  angle = angle + speed;
}