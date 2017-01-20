float x1, y1, x2, y2, d1, d2;

void setup(){
  size(500,500);
  smooth();
}


void draw(){
  background(6,7,175);
   d1 = 200;
   d2 = 80;
  PVector base = new PVector(width/2, height/2);
  PVector distance = new PVector(mouseX, mouseY);
  distance.sub(base);
  distance.limit((d1-d2)/2);
  distance.mag();
  println(distance.mag());
  /*if(distance.mag()<= d2/2){
    distance.mult(-1);
  }*/
  noStroke();
  fill(255);
  ellipse(width/2, height/2, d1, d1);
  translate(width/2, height/2);
  fill(0);
  ellipse(distance.x, distance.y, d2,d2);
}