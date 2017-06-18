float x,y,angle;
boolean grow = true;
float scalar = 50;
float speed = 0.005;

void setup(){
  size(500,500);
  smooth();
  stroke(6,7,175);
  fill(255);
  background(6,7,175);
}

void draw(){
  translate(width/2, height/2);
  if(angle<TWO_PI){
  update();
  x = sin(angle) * scalar;
  y = cos(angle) * scalar;
  angle = angle + speed;
  ellipse(x,y,5,5);
  }
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