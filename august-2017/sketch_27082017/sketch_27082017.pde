Blob[] blob = new Blob[100];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i < blob.length; i++){
    blob[i] = new Blob(random(100,400), random(100,400), random(10,30));
  }
}

void draw(){
  background(6,7,175);
  for(int i = 0; i < blob.length; i++){
    blob[i].show();
  }
}