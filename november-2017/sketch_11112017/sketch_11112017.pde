int pointCount;
int freqX = 0;
int freqY = 50;
float phi = 87;
float angle;
float x,y;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(0.1);
  noFill();
}

void draw(){
  background(6,7,175);
  pointCount = 400;
  translate(width/2, height/2);
  
  beginShape();
    for(int i = 0; i < pointCount; i++){
      angle = map(i, 0, pointCount, 0, TWO_PI);
      x = sin(angle*freqX + radians(phi));
      y = sin(angle*freqY);
      x = x * 150;
      y = y * 150;
      vertex(x,y);
    }
  endShape();
  freqX+=1;
}