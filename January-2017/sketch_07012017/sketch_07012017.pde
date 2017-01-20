Line[] l = new Line[150];

void setup(){
  size(500, 500);
  smooth();
  for(int i=0; i<=l.length-1; i++){
  l[i] = new Line();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i=0; i<=l.length-1; i++){
    l[i].display();
    l[i].move();
  }
}