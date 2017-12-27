Blob blob;

void setup(){
  size(500,500);
  smooth();
  blob = new Blob(width/2, height/2, 150);
}

void draw(){
  background(5,15,230);
  blob.show();
}