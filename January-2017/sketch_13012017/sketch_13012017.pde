 Ball[] b = new Ball[10000] ;

void setup(){
  size(500, 500);
  smooth();
  for(int i = 0; i<= b.length-1; i++){
    b[i] = new Ball();
  }
}

void draw(){
  translate(width/2, height/2);
  noStroke();
  fill(255);
  background(6,7,175);
  for(int i = 0; i<= b.length-1; i++){
  b[i].move();
  b[i].display();
  }
}