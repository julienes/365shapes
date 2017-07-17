float[] positionsX;
float[] positionsY;
ArrayList<Rond>rond;
int t = 100;
int count = 0;
void setup(){
  size(500,500);
  smooth();
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
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  count++;
  if(count >= t){
    count = 0;
  }
  rond.add(new Rond(positionsX[count], positionsY[count], positionsX[(t-1)-count],positionsY[(t-1)-count]));
  for(int i = rond.size()-1; i>=0; i--){
    Rond r = rond.get(i);
    r.display();
    if(r.isDead()){
       rond.remove(i);
    }
  }
}