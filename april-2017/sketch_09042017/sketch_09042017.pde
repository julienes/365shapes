Blob[] blob = new Blob[20];

void setup(){
  size(500,500,P3D);
  smooth();
  for(int i = 0; i<blob.length; i++){
    blob[i] = new Blob(0, 0, 100-(i*10));
  }
}

void draw(){
  background(35,53,193);
  translate(width/2, height/2);
  rotateX(PI/2);
  for(int i = 0; i<blob.length; i++){
  blob[i].show();
  }
}