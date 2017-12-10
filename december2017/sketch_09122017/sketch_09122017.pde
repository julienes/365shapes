Blob blob = new Blob();

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(0.3);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  blob.display();
}