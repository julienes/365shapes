class Rond{
  float x1;
  float y1;
  float x2;
  float y2;
  float alpha = 255;
  Rond(float _x1, float _y1, float _x2, float _y2){
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;
  }
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  void display(){
    for(float i = x1; i<=x2; i+=5){
      float x = i;
      float y = sin(i)*20;
      stroke(255,alpha);
      strokeWeight(1);
      noFill();
      ellipse(x,y+y2,5,5);
    }
    alpha-=6;
    
  }
}