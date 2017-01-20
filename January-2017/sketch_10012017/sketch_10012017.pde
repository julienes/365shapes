ArrayList <Mover> m;
float posX = width/2;
float posY = height/2;
PVector location = new PVector(width/2,height/2);;
PVector velocity = new PVector(0,0);
PVector acceleration = new PVector(-0.001,0.01);;
float topspeed = 5;

void setup(){
  size(500,500);
  smooth();
  m = new ArrayList<Mover>();
}

void draw(){
  background(6,7,175); 
  moveUpdate();
  for(int i = m.size()-1; i >=0; i--){
  Mover move = m.get(i);
  move.update();
  move.display();
  move.checkEdges();
  if(move.isDead()){
      m.remove(i);
    }
  }
  m.add(new Mover(posX, posY));
  
}

void moveUpdate(){
  acceleration = new PVector(random(-1,1),random(-1,1));
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
  posX = location.x;
  posY = location.y;
}