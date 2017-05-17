Circles circles;

void setup(){
  size(500,500);
  smooth();
  noFill();
  strokeWeight(5);
  stroke(255);
  circles = new Circles();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  circles.display();
}