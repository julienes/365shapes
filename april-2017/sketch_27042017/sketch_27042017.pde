BallSystem bs;

void setup(){
  size(500, 500);
  smooth();
  bs = new BallSystem();
  background(36,53,194);
}

void draw(){
  fill(36,53,194,10);
  rect(0,0, width, height);
  noStroke();
  fill(255);
  translate(width/2, height/2);
  bs.display();
}