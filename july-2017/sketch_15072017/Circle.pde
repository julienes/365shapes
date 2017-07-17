class Circle{
  float x,y;
  float angle = 0;
  float scalar;
  float alpha = 255;
  float baseX, baseY;
  
  Circle(float _baseX, float _baseY, float _scalar, float _angle){
    scalar = _scalar;
    angle = _angle;
    baseX = _baseX;
    baseY = _baseY;
  }
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=5;
    x = baseX + cos(angle) * scalar;
    y = baseY + sin(angle) * scalar;
    stroke(255,alpha);
    point(x,y);
  }
}