Square[] square = new Square[40];
float x, y;
void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<square.length; i++){
    x = sin(i/TWO_PI)*100;
    y = cos(i/TWO_PI) * 100;
    square[i] = new Square(x,y,i);
  }
  stroke(255);
  fill(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<square.length; i++){
    square[i].update();
    square[i].display();
  }
}