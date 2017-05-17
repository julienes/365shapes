Shape[] shape = new Shape[30];

void setup(){
  size(500,500);
  smooth();
  for(int i= 0; i<=shape.length-1; i++){
    shape[i] = new Shape((i+100)+(i*1.2), random(0.2));
  }
  strokeWeight(1);
  stroke(255);
  noFill();
}

void draw(){
 background(6,7,175);
 translate(width/2, height/2);
 for(int i= 0; i<=shape.length-1; i++){
 shape[i].display();
 }
}