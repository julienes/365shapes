class Cube{
  PVector loc;
  float posX, posY, posZ;
  PVector pos = new PVector(random(-125, 125), random(-125, 125), random(-125, 125));
  int count;
  boolean decount = false;
  
  Cube(float x, float y, float z){
    loc = new PVector(x,y,z);
    posX = loc.x;
    posY = loc.y;
    posZ = loc.z;
  }
  
  void display(){
    pushMatrix();
    translate(posX, posY, posZ);
    box(20);
    popMatrix();
  }
  
  void update(boolean inPosition){
    if(!decount){
      count++;
      if(count >= 100){
        decount = true;
      }
    }
    if(decount){
      count--;
      if(count <= 0){
        decount = false;
      }
    }
    float m = map(count, 0, 100, 0, 1);
    posX = lerp(loc.x, pos.x, m);
    posY = lerp(loc.y, pos.y, m);
    posZ = lerp(loc.z, pos.z, m);
  }
}