PVector[] lissajousPoints;
int pointCount;
float freqX = 5.15005;
float freqY = 1.3000;
float freqZ = 7.65;
float phiX = 1;
float phiY = 1;
float angle;
float x,y;
float r = 0;
float speed = 0.04;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw(){
  background(6,7,175);
  pointCount = width;
  calculateLissajousPoints();
  translate(width/2, height/2);
  rotateX(r);
  rotateY(r);
  scale(0.4);
  beginShape();
    for(int i = 0; i < pointCount-3; i++){
      if(i%4 == 0){
        vertex(0,0,0);
        vertex(lissajousPoints[i].x, lissajousPoints[i].y, lissajousPoints[i].z);
        vertex(lissajousPoints[i+3].x, lissajousPoints[i+3].y, lissajousPoints[i+3].z);
      }
    }
  endShape();
  r+=speed;
}

void calculateLissajousPoints(){
 lissajousPoints = new PVector[pointCount+1];
 float f = width/2;
 
 for(int i = 0; i <= pointCount; i++){
   float angle = map(i, 0, pointCount, 0, TWO_PI);
   float x = cos(angle*freqX+radians(phiX)) * sin(angle*2) * f;
   float y = sin(angle*freqY+radians(phiY)) * f;
   float z = sin(angle * freqZ) * f;
   lissajousPoints[i] = new PVector(x,y,z);
 }
}