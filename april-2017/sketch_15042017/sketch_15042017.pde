int radius = 80;
int numLines = 100;
float nx = 0;
float ny = 0;
void setup(){
  size(500,500);
  background(0);
  strokeWeight(1);
  stroke(255);
  noFill();
}


void draw(){
  background(35,53,193);
  float angle = 0;
  pushMatrix();
  translate(width/2, height/2);
  for(int i = 0; i < numLines; i++){
    float x1, x2, y1, y2;
    float size = map(noise(nx+i*.1), 0, 1, 0, radius * 2);
    x1 = radius * cos(angle);
    y1 = radius * sin(angle);
    x2 = x1 + size * cos(angle+PI/4);
    y2 = y1 + size * sin(angle+PI/4);
    line(x1, y1, x2, y2);
    ellipse(x2,y2,10,10);
    angle+=TWO_PI/numLines;
  }
  popMatrix();
  nx+=.01;
  ny+=.01;
}