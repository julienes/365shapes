Stick[] stick = new Stick[500];

void setup(){
  size(500, 500);
  smooth();
  for(int i = 0; i<=stick.length-1; i++){
    stick[i] = new Stick();
  }
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=stick.length-1; i++){
    stick[i].update();
    stick[i].display();
  }
}