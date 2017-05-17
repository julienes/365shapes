Shape[] shape = new Shape[20];

void setup(){
  size(500,500, P3D);
  smooth();
  for(int i= 0; i<=shape.length-1; i++){
    shape[i] = new Shape((i+50)+(i*5), random(0.2));
  }
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