class Ball{
  float augmente = 4;
  int alpha = 255;
  float curving = random(-1,1);
  PVector location = new PVector(width/2, height/2);
  PVector move = new PVector(0,0);
  PVector acceleration;
  PVector curve = new PVector(curving, 0);
  PVector gravity = new PVector(0,1);
  
  Ball(){
  
  }
  void move(){
    augmente-=0.05;
    acceleration = new PVector(0, augmente);
    acceleration.sub(gravity);
    acceleration.add(curve);
    move.normalize();
    move.sub(acceleration);
    location.add(move);
  }
  void visible(){
    alpha-=2;
  }
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    fill(255,alpha);
    ellipse(location.x, location.y, 7, 7);
  }
}