Circle[] c = new Circle[7];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<c.length; i++){
    c[i] = new Circle(50*i);
  }
}

void draw(){
  background(6,7,175);
  stroke(255);
  strokeWeight(5);
   noFill();
   for(int i = 0; i<c.length; i++){
    c[i].move();
    c[i].display();
  }
}