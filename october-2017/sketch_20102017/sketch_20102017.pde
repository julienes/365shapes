float x,y;
float angle = 0;

float speed = 0.02;
void setup() {
  size(500,500);
  smooth();
  imageMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  background(6,7,175);
  update();
  fill(255);
  ellipse(x,y,80,80);
  clip(width/2, height/2, 200,200);
  rect(width/2, height/2, 200,200);
  fill(6,7,175);
  ellipse(x,y,80,80);
}

void update(){
  x = 250 + (120 * cos(angle));
  y = 250 + (120 * sin(angle));
  angle = angle + speed;
}