Bol[] bol = new Bol[5];

void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(2);
  noStroke();
  for(int i = 0; i<=bol.length-1; i++){
    float s = map(i, 0, bol.length-1, 70,120);
    float speed = map(i, 0, bol.length-1, 0.001, 0.005);
    bol[i] = new Bol(s, speed);
  }
}


void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  for(int i = 0; i<=bol.length-1; i++){
    bol[i].display();
  }
}