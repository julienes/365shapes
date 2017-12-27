Circle[] circle = new Circle[40];
float angle = 0;
float speed = 0.05;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(1.5);
  for(int i = 0; i < circle.length; i++){
    circle[i] = new Circle(i);
  }
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  for(int i = 0; i < circle.length; i++){
    circle[i].display();
  }
  angle+=speed;
}