float[] positionsX;
float[] positionsY;
ArrayList<Rond>rond;
RondS ronds = new RondS();
RondS ronds2 = new RondS();
int t = 70;
int count = 0;
float r = 0;
void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(2);
  positionsX = new float[t];
  positionsY = new float[t];
  rond = new ArrayList<Rond>();
  for(int i = 0; i<=t-1; i++){
    float angle = map(i,0,t-1,0,TWO_PI);
    float x = 125*sin(angle);
    float y = 125*cos(angle);
    positionsX[i] = x;
    positionsY[i] = y;
  }
  
  for(int i = 0; i<=t-1; i++){
    rond.add(new Rond(positionsX[i], positionsY[i], positionsX[(t-1)-i],positionsY[(t-1)-i]));
  }
}

void draw(){
  r+=0.03;
  background(6,7,175);
  translate(width/2, height/2);
  pushMatrix();
  rotateZ(r);
  ronds.display();
  rotate(HALF_PI+r);
  ronds2.display();
  popMatrix();
}