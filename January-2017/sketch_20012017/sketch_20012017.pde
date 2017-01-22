Sphere s;

float camera = 0;

void setup(){
  size(500, 500, P3D);
  smooth();
  s = new Sphere();
}

void draw(){
  camera+=0.02;
  background(6,7,175);
  fill(255);
  noStroke();
  translate(width/2, height/2);
  rotateX(camera);
  rotateY(camera);
  s.display();
}