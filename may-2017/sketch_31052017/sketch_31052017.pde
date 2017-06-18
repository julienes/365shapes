Cylindre c = new Cylindre(PI/4);

void setup(){
  size(500,500,P3D);
  smooth();
}

void draw(){
  translate(width/2, height/2);
  lights();
  background(6,7,175);
  stroke(255);
  noFill();
  c.display();
}