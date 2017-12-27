Square[] square = new Square[6];
void setup(){
  size(500,500,P3D);
  smooth();
  for(int i = 0; i<square.length; i++){
    square[i] = new Square(0, 0, TWO_PI/i, i*20);
    println(TWO_PI/i);
  }
}

void draw(){
  background(6,7,175);
  stroke(255);
  strokeWeight(5);
  noFill();
  translate((width/2)-150, height/2);
  for(int i = 0; i<square.length; i++){
    pushMatrix();
    translate(i*50, 0);
    square[i].scalar();
    square[i].display();
    popMatrix();
  }
}