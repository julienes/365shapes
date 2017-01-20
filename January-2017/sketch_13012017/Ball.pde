class Ball{
  PVector position = new PVector(width, random(height));
  PVector move;
  PVector velocity = new PVector(0, 0);
  Ball(){
  
  }
  void move(){
    move = PVector.random2D();
    velocity.add(move);
    velocity.limit(2);
    position = position.sub(velocity);
    position.limit((width/2)-100);
  }
  
  void display(){
    ellipse(position.x, position.y, 1.5, 1.5);
  }
}