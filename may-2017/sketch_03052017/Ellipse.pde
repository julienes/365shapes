class Ellipse{
  PVector position;
  PVector move = new PVector(0,0);
  PVector acceleration;
  float r = random(5,10);
  Ellipse(float x, float y){
   position = new PVector(x,y);
  }
  
  void update(PVector acc){
    move.add(acc);
    move.limit(r);
    position.add(move);
  }
  
  void edges(){
    if(position.x > width-100){
      position.x = 100;
    }
    if(position.x < 100){
      position.x = width-100;
    }
    if(position.y > height-100){
      position.y = 100;
    }
    if(position.y < 100){
      position.y = height-100;
    }
  }
  
  void display(){
    stroke(255);
    ellipse(position.x, position.y, 2,2);
  }
}