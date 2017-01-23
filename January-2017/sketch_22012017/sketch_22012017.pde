ArrayList <Wave> wave;

void setup(){
  size(500, 500);
  smooth();
  wave = new ArrayList<Wave>();
}

void draw(){
  background(6,7,175);
  for(int i = wave.size()-1; i>=0; i--){
    Wave w = wave.get(i);
    w.update();
    w.display();
    if(w.isDead()){
      wave.remove(i);
    }
  }
  wave.add(new Wave());
}