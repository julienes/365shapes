class Sinu {
  float x,y,z;
  float alpha = 255;
  Sinu(float _x, float _y, float _z){
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
   alpha-=1;
   stroke(255, alpha);
   vertex(x,y,z);
  }
}