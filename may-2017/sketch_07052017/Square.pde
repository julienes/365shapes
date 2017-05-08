class Square{
  float alpha = 255;
  float x,y;
  Square(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  boolean end(){
    alpha-=2;
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    rectMode(CENTER);
    stroke(255,alpha);
    rect(x,y,20,20);
  }
}