Circles circles;
Circles circles2;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
  circles = new Circles(HALF_PI);
  circles2 = new Circles(-HALF_PI);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  circles.display();
  circles2.display();
}