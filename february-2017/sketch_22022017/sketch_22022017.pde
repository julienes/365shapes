Rose rose;

void setup(){
  frameRate(10);
  size(500,500);
  smooth();
  rose = new Rose();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rose.display();
}