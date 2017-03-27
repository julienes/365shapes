class Square{
  float rotation;
  float scale;
  float x,y;
  boolean grow = true;
  Square(float _x, float _y, float r, float s){
    x = _x;
    y = _y;
    rotation = r;
    scale = s;
  }
  void scalar(){
    if(grow == true){
      scale++;
      if(scale>=120){
        grow = false;
      } 
    }else if(grow == false){
      scale--;
      if(scale<=50){
        grow = true;
      }
    }
  }
  
  void display(){
    rectMode(CENTER);
    rotate(rotation);
    rect(x,y,scale, scale);
    rotation+=0.1;
  }
}