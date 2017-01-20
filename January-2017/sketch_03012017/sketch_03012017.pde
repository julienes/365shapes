
ArrayList<Mover> m;

void setup(){
  size(500,500);
  m = new ArrayList<Mover>();
}


void draw(){
  background(6,7,175);
  for(int i = m.size()-1; i >=0; i--){
    Mover move = m.get(i); 
    move.update();
    move.display(); 
    if(move.isDead()){
      m.remove(i);
    }
  } 
  m.add(new Mover(/*mouseX, mouseY*/));

}