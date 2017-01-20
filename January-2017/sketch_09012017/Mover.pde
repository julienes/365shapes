class Mover {

  PVector location;
  PVector velocity;
  // Acceleration is the key!
  PVector acceleration;
  // The variable, topspeed, will limit the magnitude of velocity.
  float topspeed;
  float x,y;
  float alpha = 255;

  Mover() {
    location = new PVector(0,0);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    topspeed = 4;
  }

  void update() {
    alpha-=2;
    acceleration = PVector.random2D();

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    location.limit((height/2)-50);
  }
   boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
   void display() {
    stroke(6,7,175, alpha);
    fill(255, alpha);
    ellipse(x+location.x,y+location.y,10,10);
  }

  /*void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }

  }*/

}