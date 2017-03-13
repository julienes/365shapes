Line[] line = new Line[10];

void setup(){
  size(500, 500);
  smooth();
  for(int i = 0; i<=line.length-1; i++){
    line[i] = new Line();
  }
}

void draw(){
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