class Particle {
  PVector pos = new PVector(random(width - 1), random(height - 1)); // position
  PVector vel = new PVector(0, 0); // velocity
  PVector acc = new PVector(0, 0); // acceleration
  PVector prevPos = pos.copy(); // previous position
  float maxSpeed = 5;
  
  void update() {
    // keep current position
    prevPos.x = pos.x; 
    prevPos.y = pos.y; 
    
    // apply acceleration and velocitiy
    vel.add(acc); 
    vel.limit(maxSpeed); // limit velocity
    pos.add(vel);
    
    if(pos.x >= width-100){
      pos.x = prevPos.x = 100;
    }
    if(pos.x < 100){ 
      pos.x = prevPos.x = width - 100;
    }
    if(pos.y >= height-100){
      pos.y = prevPos.y = 100;
    }
    if(pos.y < 100){
      pos.y = prevPos.y = height - 100;
    }
    
    // reset acceleration
    acc.mult(0); 
  }
  
  void applyForce(PVector force) {
    acc.add(force);
  }
  
  void show() {
    stroke(255, 50);
    strokeWeight(2);
    line(pos.x, pos.y, prevPos.x, prevPos.y);
  }
  
  void follow(PVector[] flowField) {
    int x = floor(pos.x / scl);
    int y = floor(pos.y / scl);
    int index = x + y * cols;
    
    PVector force = flowField[index];
    applyForce(force);
  }
}