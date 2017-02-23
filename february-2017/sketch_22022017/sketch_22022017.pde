Rose rose;

void setup(){
  frameRate(10);
  size(500,500);
  smooth();
  rose = new Rose();
}

void draw(){
  background(7,11,96);
  translate(width/2, height/2);
  rose.display();
}