class Ball{
  PVector position = new PVector(0, 0,0);
  PVector move;
  PVector velocity = new PVector(0, 0,0);
  float r;
  Ball(){
  
  }
  void move(){
    move = PVector.random2D();
    velocity.add(move);
    velocity.limit(2);
    position = position.sub(velocity);
    position.limit(130);
  }
  
  void display(){
    textSize(13);
    r = random(0,1);
    if(r<=0.4){
      text("0",position.x, position.y, position.z);
    }else{
      text("1",position.x, position.y, position.z);
    }
  }
}