Line line;

void setup(){
  size(500,500);
  smooth();
  line = new Line();
  background(6,7,175);
}

void draw(){
  line.display();
  line.update();
}