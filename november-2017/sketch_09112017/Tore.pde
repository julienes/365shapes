class Tore{
  float x,y,z;
  float alpha = 255;
  float s;
  Tore(float _x, float _y, float _z, float _s){
    x = _x;
    y = _y;
    z = _z;
    s = _s;
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }  
 
  
  void display(){
    alpha--;
    stroke(255,alpha);
    strokeWeight(s);
    point(x,y,z);
  }
}  