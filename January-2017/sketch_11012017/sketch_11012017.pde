float r = 0;

void setup(){
  size(500,500, P3D);
  smooth();
}

void draw(){
  r+=0.05;
  background(6,7,175);
  lights();
   spotLight(6, 7, 175, 0, 250, 0, -1, 400, 0, 0, 100);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotateX(r);
  rotateY(r);
  rotateZ(r);
  sphere(100);
  sphereDetail(20);
}