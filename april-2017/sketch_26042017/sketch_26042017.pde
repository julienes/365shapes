float x,y;
float angle = 0;
float speed = 0.1;
float size;
float t = 0;
boolean grow = true;
float n;
void setup(){
  size(500,500);
  smooth();
  background(6,7,175);
}

void draw(){
  fill(6,7,175,40);
  noStroke();
  rect(0,0,width, height);
  if(grow){
    n = map(angle, 0, TWO_PI, 0,200);
  }else{
    n = map(angle, 0, TWO_PI, 200,0);
  }
  size = n;
  translate(width/2+20, height/2-20);
  rotate(PI/4);
  move();
  stroke(255);
  strokeWeight(10);
  noFill();
  rect(x-size/2,y-size/2,size,size);
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
  t += random(0.05, 0.09);
  float j = noise(t);
  float r = map(j, 0,1,10,20);
  x = sin(angle)* r;
  y = cos(angle) * r;
  angle = angle + speed;
}