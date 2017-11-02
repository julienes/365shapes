Morph[] morph = new Morph[15];
float angle = 0;
float speed = 0.02;
float a = 0;
void setup(){
  size(500,500);
  smooth();
  noFill();
  strokeWeight(12);
  for(int i = 0 ; i < morph.length; i++){
    angle+=0.01;
    morph[i] = new Morph(i*12, angle,i);
  }
}




void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotate(a);
  for(int i = 0 ; i < morph.length; i++){
    morph[i].display();
  }
  a = a + speed;
}