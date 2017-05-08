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
  background(19,65,188);
  translate(width/2, height/2);
  circles.display();
}