int a = 150;
int n = 6;
float r = 0;
float t = 0.03;
float speed = 0.05;
float k = 2;
int total = 500;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(5);
  noFill();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateY(PI/2);
  //rotateX(r);
  fill(255);
  noStroke();
  //sphere(50);
  stroke(255);
  noFill();
  sin3D();
  r = r + speed;
}

void sin3D(){
  t+=0.02;
  float m = noise(t);
  beginShape();
  for(int i = 0; i < total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    float x = a * ((cos(angle))/(sqrt(1+(k*k*m)*(cos(n*angle))*cos(n*angle))));
    float y = a * ((sin(angle+m))/(sqrt(1+(k*k/m)*(cos(n*angle))*cos(n*angle))));
    float z = a * ((k*cos(n*angle))/(sqrt(1+(k*k+m)*(cos(n*angle))*cos(n*angle))));
    vertex(x*m,y,z);
  }
  endShape();
}