ArrayList<Rose> rose;
PVector location = new PVector(0,0);
PVector move = new PVector(0,0);
PVector acceleration;
float posX;
float posY;

void setup(){
  frameRate(10);
  size(500,500);
  smooth();
  rose = new ArrayList<Rose>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = rose.size()-1; i >=0; i--){
   move();
  translate(posX, posY);
    Rose r = rose.get(i); 
    r.display(); 
    if(r.isDead()){
      rose.remove(i);
    }
  }
  rose.add(new Rose());
}

void move(){
  acceleration = PVector.random2D();
  move.add(acceleration);
  move.normalize();
  location.add(acceleration);
  location.limit(5);
  posX = location.x;
  posY = location.y;

}