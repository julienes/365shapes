Circle[] circle = new Circle[80];

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  for(int i = 0; i < circle.length; i++){
    circle[i] = new Circle(i, i);
  }
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < circle.length; i++){
    circle[i].display();
  }
}