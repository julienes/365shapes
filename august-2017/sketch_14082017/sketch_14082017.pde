float angle = 0;
float speed = 0.05;

void setup(){
  size(500,500,P3D);
  smooth();
}

void draw(){
  angle = angle + speed;
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateY(angle);
  rotateZ(angle);
  cross();
}

void cross(){
  pushMatrix();
  translate(-25,-25);
  box(50);
  popMatrix();
  pushMatrix();
  translate(-25,-25,50);
  box(50);
  popMatrix();
  pushMatrix();
  translate(-25,-25,-50);
  box(50);
  popMatrix();
  pushMatrix();
  translate(-25,-75);
  box(50);
  popMatrix();
  pushMatrix();
  translate(-25,25);
  box(50);
  popMatrix();
  pushMatrix();
  translate(-75,-25);
  box(50);
  popMatrix();
  pushMatrix();
  translate(25,-25);
  box(50);
  popMatrix();
}