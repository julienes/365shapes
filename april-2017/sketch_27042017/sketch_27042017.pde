BallSystem bs;

void setup(){
  size(500, 500);
  smooth();
  bs = new BallSystem();
  background(36,53,194);
  noStroke();
}

void draw(){
  fill(36,53,194,10);
  rect(-10,-10, width, height);
  fill(255);
  translate(width/2, height/2);
  bs.display();
}