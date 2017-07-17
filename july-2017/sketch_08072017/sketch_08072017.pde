Door[] door = new Door[10];

void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(7);
  stroke(6,7,175);
  noFill();
  for(int i = 0; i<door.length; i++){
    float s = map(i, 0, door.length, 100,200);
    float count = map(i, 0, door.length, 0, 40);
    door[i] = new Door(s, count);
  }
}

void draw(){
  noFill();
  background(6,7,175);
  pushMatrix();
  translate(width/2, height/2);
  for(int i = 0; i<door.length; i++){
    door[i].update();
    door[i].display();
  }
  popMatrix();
  fill(255);
  pushMatrix();
  translate(width/2,height/2,-100);
  ellipse(0,0,250,250);
  popMatrix();
}