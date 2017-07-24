class Spiral {
  float x, y ,z;
  float alpha = 255;
  Spiral(float _x, float _y, float _z){
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
  
  void update(){
    alpha-=0.5;
  }
  
  
  void display(){
    stroke(255, alpha);
    strokeWeight(3);
    point(x,y,z);
  }
}