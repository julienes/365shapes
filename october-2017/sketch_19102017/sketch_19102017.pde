Blob blob;


void setup(){
  size(500,500, P3D);
  smooth();
  fill(255);
  noStroke();
  blob = new Blob(0, 0, 100);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  lights();
  rotateX(PI/3);
  rotateY(PI/3);
  blob.show();
}