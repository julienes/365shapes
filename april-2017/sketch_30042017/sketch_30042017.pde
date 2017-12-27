Circle[] circle = new Circle[120];

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0; i<=circle.length-1; i++){
    circle[i] = new Circle(i/TWO_PI);
  }
}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  for(int i = 0; i<=circle.length-1; i++){
    circle[i].display(i);
  }
}