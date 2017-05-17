BallSystem bs;

void setup(){
  size(500, 500);
  smooth();
  bs = new BallSystem();
  background(6,7,175);
  noStroke();
}

void draw(){
  fill(6,7,175,20);
  rect(-10,-10, width, height);
  fill(255);
  translate(width/2, height/2);
  bs.display();
}