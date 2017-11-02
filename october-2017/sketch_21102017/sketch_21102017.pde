ArrayList<PVector>grid;
ArrayList<Wave>wave;
int r;

void setup(){
  size(500,500);
  smooth();
  wave = new ArrayList<Wave>();
  grid = new ArrayList<PVector>();
  wave.add(new Wave());
  for(int i = 0; i < 250; i+=20){
    for(int j = 0; j < 250; j+=20){
      grid.add(new PVector(i,j));
    }
  }
}

void draw(){
  addWave();
  translate(width/2-125, height/2-125);
  background(6,7,175);
  noStroke();
  for(int i = 0; i < grid.size(); i++){
    PVector g = grid.get(i);
    PVector v1 = new PVector(g.x, g.y);
    for(int k = wave.size()-1; k >= 0; k--){
      Wave w = wave.get(k);
      for(int j = 0; j < w.sinWave.size(); j++){
        PVector s = w.sinWave.get(j);
        PVector v2 = new PVector(s.x, s.y);
        float d = v1.dist(v2);
        if(d<15){
          ellipse(v1.x, v1.y, 10,10);
        }
      }
    }
  }
  for(int k = wave.size()-1; k >= 0; k--){
    Wave w = wave.get(k);
    w.display();
    if(w.isDead()){
      wave.remove(k);
    }
  }
  for(int i = 0; i < grid.size(); i++){
    PVector g = grid.get(i);
    PVector v1 = new PVector(g.x, g.y);
    ellipse(v1.x, v1.y, 5,5);
  }
  
}

void addWave(){
 r = floor(random(100));
 if(r == 5){
   wave.add(new Wave());
 }
}