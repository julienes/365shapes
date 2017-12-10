Sapin[] sapin = new Sapin[5];
float a = 0;
float s = 0.01;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0; i < sapin.length; i++){
    float s = map(i, 0, sapin.length, 0.2, 1);
    sapin[i] = new Sapin(s);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2 - 150);
  rotateY(a);
  scale(2);
  for(int i = 0; i < sapin.length; i++){
    sapin[i].display();
  }
  a+=s;
}