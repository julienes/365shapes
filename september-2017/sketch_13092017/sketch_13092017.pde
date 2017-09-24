SinSystem[] sy = new SinSystem[5];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<=sy.length-1; i++){
  sy[i] = new SinSystem();
  }
}

void draw(){
  background(6,7,175);
  noStroke();
  for(int i = 0; i<=sy.length-1; i++){
  sy[i].display();
  }
}