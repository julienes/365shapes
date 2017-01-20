int constant = 250;
float angle = 0.05;
int scalar = 100;
float speed = 0.05;
float increase = 0;
float size =10;
void setup(){
size(500,500);
smooth();
background(6,7,175);
for(int i = 0; i<125; i++){
  fill(255);
  noStroke();
  float x = constant + sin(angle) * scalar;
  float y = constant + cos(angle) * scalar;
  ellipse(x,y,30,30);
  angle = angle + speed;
  increase = increase - 0.09;
  size= size - 0.01;
}
}

void draw(){
  
}