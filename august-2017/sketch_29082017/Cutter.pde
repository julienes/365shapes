class Cutter {
  float x1, y1, x2, y2;
  float alpha = 255;
  Cutter(float _x1, float _y1, float _x2, float _y2){
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;
  }
  
  
  boolean isDead(){
    if(alpha <=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=5;
    stroke(255, alpha);
    strokeWeight(4);
    line(x1, y1, x2, y2);
  }
 
}