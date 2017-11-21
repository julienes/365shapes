ArrayList<Wave>wave;

float t;
int y = 0;
void setup(){
  size(500,500);
  smooth();
  stroke(255);
  wave = new ArrayList<Wave>();
}

void draw(){
  background(6,7,175);
  wave.add(new Wave(y));
  y++;
  if(y > height - 200){
    y = 0;
  }
  
  for(int i = 0; i < wave.size(); i++){
    Wave w = wave.get(i);
    w.display();
    if(w.isDead()){
      wave.remove(i);
    }
  }
}