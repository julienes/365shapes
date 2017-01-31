Spiral[] spiral = new Spiral[150];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<=spiral.length-1; i++){
    spiral[i] = new Spiral(i,i, i/20);
  }
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=spiral.length-1; i++){
    spiral[i].move();
    spiral[i].display();
  }
}