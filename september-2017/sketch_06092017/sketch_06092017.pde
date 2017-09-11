Scribble s = new Scribble();
float angle;
//ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(.3);
  noFill();
}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  rotateY(angle);
  scale(3.5);
  s.display();
  angle+=0.02;
}