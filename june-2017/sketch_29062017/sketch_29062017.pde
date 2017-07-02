float[] positionsX;
float[] positionsY;
int t = 125;
float r1 = 0;
float r2 = QUARTER_PI;
float speed1 = 0.02;
float speed2 = 0.04;


void setup(){
  size(500,500);
  smooth();
  positionsX = new float[t];
  positionsY = new float[t];
  stroke(255);
  for(int i = 0; i<=t-1; i++){
    float angle = map(i,0,t-1,0,TWO_PI);
    float x = 125*sin(angle);
    float y = 125*cos(angle);
    positionsX[i] = x;
    positionsY[i] = y;
  }
}

void draw(){
  r1 = r1 + speed1;
  r2 = r2 + speed2;
  background(6,7,175);
  translate(width/2, height/2);
  rotate(r1);
  for(int i = 0; i<=t-1; i++){
    line(positionsX[i], positionsY[i],positionsX[(t-1)-i], positionsY[(t-1)-i]);
  }
  rotate(r2);
  for(int i = 0; i<=t-1; i++){
    line(positionsX[i], positionsY[i],positionsX[(t-1)-i], positionsY[(t-1)-i]);
  }
}