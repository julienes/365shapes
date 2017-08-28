Square[] square = new Square[20];
float angle = -PI;
boolean grow = true;
void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  rectMode(CENTER);
  for(int i = 0; i<=square.length-1; i++){
    if(grow){
      angle+=0.1;
      if(angle >= PI/2){
        grow = false;
      }
    }
    if(!grow){
      angle-=0.1;
      if(angle <= -PI/2){
        grow = true;
      }
    }
    square[i] = new Square(i*12, angle); 
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=square.length-1; i++){
    square[i].update();
    square[i].display();
  }
}