Cellular cellular;


void setup(){
  size(500,500);
  smooth();
  noStroke();
  cellular = new Cellular();
  background(6,7,175);
}

void draw(){
  //int[] ruleset = {0,1,1,1,1,0,1,1};
  cellular.display();
  cellular.generate();
}