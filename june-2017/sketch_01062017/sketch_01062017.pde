Circles c = new Circles();

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(6,7,175);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(PI/3);
  c.display();
}