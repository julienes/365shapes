class Particles{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  PVector pos;
  float x = spot.x;
  float y = spot.y;
  float angle = random(0,200);
  float speed = random(0.05,.1);
  PVector target;
  
  Particles(){
    pos = new PVector(spot.x, spot.y);
    target = new PVector(spot.x, spot.y);
  }
  
  
  void move(){
    pos.x = pos.x + sin(angle);
    pos.y = pos.y + cos(angle);
    angle = angle + speed;
    if(frameCount > 100){
      pos.lerp(target,.2);
    }
  }
  
  void display(){
    pushMatrix();
    translate(pos.x,pos.y);
    ellipse(0,0,.2,.2);
    popMatrix();
  }
}