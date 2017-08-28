class Particle{
  float x,y,z;
  float alpha = 255;
  Particle(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=4;
    noStroke();
    fill(255,alpha);
    pushMatrix();
    translate(x,y,z);
    ellipse(0,0,5,5);
    popMatrix();
  }
  
}