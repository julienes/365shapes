class Square{
  float x,y, angle;
  float count = 255;
  Square(float _x, float _y, float a){
    x = _x;
    y = _y;
    angle = a;
  }
  
  void update(){
    count-=3;
  }
  boolean isDead(){
    if(count<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    stroke(6,7,175);
    fill(255,255,255);
    rectMode(CENTER);
    rect(x,y,40,40);
  }
}