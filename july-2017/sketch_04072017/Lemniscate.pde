class Lemniscate{
  float x,y;
  float alpha = 255;
  
  Lemniscate(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=2;
    stroke(255,alpha);
    fill(255,alpha);
    point(x,y);
  }
}