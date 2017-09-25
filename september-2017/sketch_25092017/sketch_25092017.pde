int a = 150;
int n = 40;
float r = 0;
float speed = 0.03;
float k = 1;
int total = 500;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
  noFill();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  r = r +  speed;
  rotateY(r);
  sin3D();
}

void sin3D(){
  beginShape();
  for(int i = 0; i < total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    float x = a * ((cos(angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
    float y = a * ((sin(angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
    float z = a * ((k*cos(n*angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
    vertex(x,y,z);
  }
  endShape();
}