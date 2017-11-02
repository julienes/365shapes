int total = 1;
float angle = 0;
float speed = 0.01;
Blob[] blob = new Blob[total];

void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(1);
  for(int i = 0; i < total; i++){
    blob[i] = new Blob(0, 0, 120, 255);
  }
  
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  for(int i = 0; i < total; i++){
    blob[i].show();
  }
  pushMatrix();
  rotateY(HALF_PI);
  for(int i = 0; i < total; i++){
    blob[i].show();
  }
  popMatrix();
  
  pushMatrix();
  rotateY(QUARTER_PI);
  for(int i = 0; i < total; i++){
    blob[i].show();
  }
  popMatrix();
  angle = angle + speed;
}