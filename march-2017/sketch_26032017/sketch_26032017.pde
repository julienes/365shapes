Circle[] circle= new Circle[50];

void setup(){
  size(500,500);
  smooth();
  for(int i = circle.length-1; i>= 0; i--){
    circle[i] = new Circle(i*2, i/10);
  }
}

void draw(){
  background(6,7,175);
  noFill();
  stroke(255);
  translate(width/2, height/2);
  for(int i = circle.length-1; i>= 0; i--){
    circle[i].update();
    circle[i].display();
  }
}