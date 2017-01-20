ArrayList <Mover> m;

void setup(){
  size(500,500);
  smooth();
  background(6,7,175);
  m = new ArrayList<Mover>();
}

void draw(){
  translate(width/2, height/2);
  for(int i = m.size()-1; i >=0; i--){
  Mover move = m.get(i);
  move.update();
  move.display();
  if(move.isDead()){
      m.remove(i);
    }
  }
  m.add(new Mover());
  
}