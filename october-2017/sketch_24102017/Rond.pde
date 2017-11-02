class Rond{
  float x, y;
  float alpha = 255;
  float size;
  Rond(float _x, float _y, float _size){
    x = _x;
    y = _y;
    size = _size * 200;
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    stroke(255,alpha);
    noFill();
    ellipse(x,y,size,size);
  }
  
  void update(){
    alpha-= 3;
  }
}