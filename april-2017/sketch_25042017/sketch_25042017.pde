float x,y;
float angle = 0;
float speed = 0.1;
float size;
boolean grow = true;
float n;
void setup(){
  size(500,500);
  smooth();
  noStroke();
  background(6,7,175);
}

void draw(){
  fill(6,7,175,40);
  rect(0,0,width, height);
  if(grow){
    n = map(angle, 0, TWO_PI, 0,200);
  }else{
    n = map(angle, 0, TWO_PI, 200,0);
  }
  size = n;
  translate(width/2, height/2);
  move();
  fill(255);
  ellipse(x,y,size,size);
  if(angle>TWO_PI){
    angle = 0;
    if(grow == true){
      grow = false;
    }else{
      grow = true;
    }
  }
}


void move(){
  x = sin(angle)*100;
  y = cos(angle) * 100;
  angle = angle + speed;
}