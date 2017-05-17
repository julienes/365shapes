class Ball{
  PVector position = new PVector(random(0,250), random(0,250));
  PVector velocity = new PVector(0,0);
  PVector acceleration  = PVector.random2D();
  float count;
  Ball(){
  
  }
  
  
  void edges(){
    if(position.x >= 250){
      position.x = 1;
    }else if(position.x<=0){
      position.x = 249;
    }
    if(position.y >= 250){
      position.y = 1;
    }else if(position.y<=0){
      position.y = 249;
    }
  }
  
  void display(){
    ellipse(position.x, position.y, 10,10);
  }
  
  void update(){
     count++;
     if(count>=20){
       acceleration = PVector.random2D();
       count = 0;
     }
     velocity.add(acceleration);
     velocity.normalize();
     position.add(velocity);
  }
}