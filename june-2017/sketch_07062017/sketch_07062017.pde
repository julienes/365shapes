ArrayList<Particule>p;

void setup(){
  size(500,500);
  smooth();
  p = new ArrayList<Particule>();
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=100; i++){
    p.add(new Particule(random(150,350), random(-1,-0.5), floor(random(1,10))));
  }
  for(int i = p.size()-1; i>=0 ; i--){
    Particule particule = p.get(i);
    particule.update();
    particule.display();
    if(particule.isDead()){
      p.remove(i);
    }
  }
  saveFrame("Output/gol_####.png");
}