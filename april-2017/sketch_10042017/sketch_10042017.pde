Blob blob;
float z;
void setup(){
  size(500,500,P3D);
  smooth();
    blob = new Blob(0, 0,150);
}

void draw(){
  background(35,53,193);
  translate(width/2, height/2);
  blob.show();
}