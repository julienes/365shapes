Globe[] globe = new Globe[30];
void setup(){
  size(500,500, P3D);
  smooth();
  for(int i = 0; i < globe.length; i++){
    globe[i] = new Globe(i);
  }
  stroke(255);
  noFill();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(HALF_PI);
  for(int i = 0; i < globe.length; i++){
    globe[i].display();
  }
}