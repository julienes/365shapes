class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float alpha = 255;
  float size = random(50,60);
  float x;
  float y;
  Mover(/*float depart_x, float depart_y*/){
    //x = depart_x; 
    //y = depart_y; 
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void update(){
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(3);
    alpha-=1;
    size -= random(0.3,0.5);
  }
  boolean isDead(){
    if(alpha<=0 || size<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    noStroke();
    fill(255,alpha);
    ellipse(location.x, location.y, size, size);
  }
}