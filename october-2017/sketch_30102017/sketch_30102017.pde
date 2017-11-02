int total = 10;
float angle = 0;
float speed = 0.01;
Blob[] blob = new Blob[total];

void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(1);
  for(int i = 0; i < total; i++){
    float a = map(i, 0, total, 100, 255);
    blob[i] = new Blob(0, 0, i, a);
  }
  
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    blob[i].show();
  }
  angle = angle + speed;
}