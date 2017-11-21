int pointCount;
int freq = 1;
float phi = 0;
float angle;
float x,y;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
}

void draw(){
  background(6,7,175);
  pointCount = 400;
  translate(50, height/2);
  
  beginShape();
    for(int i = 0; i < pointCount; i++){
      angle = map(i, 0, pointCount, 0, TWO_PI);
      y = sin(angle*freq + radians(phi));
      y = y * 100;
      vertex(i,y);
    }
  endShape();
  freq++;
}