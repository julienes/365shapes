CircleSystem[] c = new CircleSystem[5];
float scalar = 10;
void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<c.length; i++){
    scalar+=30;
    c[i] = new CircleSystem(random(50,150), scalar, random(0.01, 0.09));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<c.length; i++){
    c[i].display();
  }
}