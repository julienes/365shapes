float[] positionsX;
float[] positionsY;
int t = 200;
int count = 0;
void setup(){
  size(500,500);
  smooth();
  stroke(255);
  positionsX = new float[t];
  positionsY = new float[t];
  for(int i = 0; i<=t-1; i++){
    float angle = map(i,0,t-1,0,TWO_PI);
    float x = 150*sin(angle);
    float y = 150*cos(angle);
    positionsX[i] = x;
    positionsY[i] = y;
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  count++;
  if(count>=t-1){
    count = 0;
  }
  for(int i = 0; i<=t-1; i++){
    line(positionsX[count],positionsY[count], positionsX[i], positionsY[i]);
  }
}