class Blob{
  PVector pos;
  float r;
  PVector vel;
  
  Blob(float x, float y){
    pos = new PVector(x,y);
    vel = PVector.random2D();
    vel.mult(random(2,5));
    r =130;
  }
  
  void update(){
    pos.add(vel);
    if(pos.x+r > width-30 || pos.x-r <30){
      vel.x *= -1;
    }
    if(pos.y+r > height-30 || pos.y-r <30){
      vel.y *= -1;
    }
  }
  void show(){
    noFill();
    stroke(0);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}