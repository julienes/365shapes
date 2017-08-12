ArrayList<Spoke>spoke;
int total = 100;

void setup(){
  size(500, 500);
  smooth();
  stroke(255);
  noFill();
  spoke = new ArrayList<Spoke>();
  for(int i = 0; i<= total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    spoke.add(new Spoke(angle));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(Spoke s : spoke){
    s.update();
    s.display();
  }
}