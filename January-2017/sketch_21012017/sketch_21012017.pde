BallSystem bs;

void setup(){
  size(500, 500);
  smooth();
  bs = new BallSystem();
}

void draw(){
  background(6,7,175);
  noStroke();
  fill(255);
  bs.display();
}