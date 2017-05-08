ArrayList <Mover> m;
float posX;
float posY;
PVector location = new PVector(0,0);;
PVector velocity = new PVector(0,0);
PVector acceleration;
float topspeed = 5;

void setup(){
  size(500,500);
  smooth();
  m = new ArrayList<Mover>();
}

void draw(){
  translate(width/2, height/2);
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
  location.limit(200);
  posX = location.x;
  posY = location.y;
}