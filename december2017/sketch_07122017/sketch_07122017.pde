float[] circleX;
float[] circleY;
int total = 500;
float R = 150;
int r, r2;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(0.2);
  circleX = new float[total+1];
  circleY = new float[total+1];
  for(int i = 0; i <= total; i++){
    float angle = map(i,0,total,0,TWO_PI);
    float x = R * cos(angle);
    float y = R * sin(angle);
    
    circleX[i] = x;
    circleY[i] = y;
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  beginShape();
  for(int i = 1; i <= total; i++){
      r = floor(random(0,total));
      r2 = floor(random(0,total));
    curveVertex(circleX[i],  circleY[i]);
    curveVertex(circleX[total-r],  circleY[total-r]);
  }
  endShape();
  
}