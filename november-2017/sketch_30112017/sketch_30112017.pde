Cellular cellular;

void setup(){
  size(500,500);
  smooth();
  noStroke();
  fill(255);
  cellular = new Cellular();
  cellular.init();
}

void draw(){
  background(6,7,175);
  translate(50,50);
  cellular.display();
  cellular.generate();
}