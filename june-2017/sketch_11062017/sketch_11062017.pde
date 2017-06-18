float x,y,angle;
boolean grow = true;
float scalar = 50;
float speed = 0.01;


void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  beginShape(LINES);
  for(float i = 0; i<=TWO_PI; i+=0.002){
    update();
    x = sin(i) * (220-scalar);
    y = cos(i) * scalar;
    vertex(x,y);
  }
  endShape();
}

void update(){
  if(grow){
    scalar+=5;
    if(scalar>=150){
      grow = false;
    }
  }
  if(!grow){
    scalar-=5;
    if(scalar<=50){
      grow = true;
    }
  }
}