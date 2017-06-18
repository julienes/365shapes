float angle;
float speed = 0.02;
Circle[] circle = new Circle[50];
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  for(int i = 0; i<circle.length; i++){
  circle[i] = new Circle(i*5);
  }
  
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2, -400);
  rotateX(angle);
  rotateY(angle);
  for(int i = 0; i<circle.length; i++){
  circle[i].display();
  }
  angle = angle + speed;
}