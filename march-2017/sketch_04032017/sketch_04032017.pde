Line[] line = new Line[50];

void setup(){
  size(500, 500);
  smooth();
  for(int i = 0; i<=line.length-1; i++){
    line[i] = new Line();
  }
}

void draw(){
  strokeWeight(1);
  stroke(255);
  background(5,15,230);
  noFill();
  translate(width/2, height/2);
  for(int i = 0; i<=line.length-1; i++){
    pushMatrix();
    rotate(i);
    line[i].move();
    line[i].display();
    popMatrix();
  }
}