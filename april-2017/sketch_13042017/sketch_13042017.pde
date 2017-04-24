Line line;

void setup(){
  size(500,500);
  smooth();
  line = new Line();
  background(35,53,193);
}

void draw(){
  line.display();
  line.update();
}