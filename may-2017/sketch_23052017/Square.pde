class Square{
  float x, y;
  float angle;
  float r;
  float speed = 0.2;
  boolean accelerate = true;
  float count = 0;
  float start;
  Square(float _x, float _y, float _angle){
    x = _x;
    y = _y;
    angle = _angle;
    start = _angle;
    r = angle/TWO_PI;
  }
  
  boolean finish(){
    if(!accelerate){
      return true;
    }else{
      return false;
    }
  }
  
  
  void update(){
    count+=0.1;
    if(count>=start){
      if(accelerate){
        speed += 0.009;
        if(speed >=1){
          accelerate = false;
        }
      }
      if(!accelerate){
        r = 0;
      }
    }
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(r);
    rectMode(CENTER);
    rect(0,0,40,40);
    popMatrix();
    r = r + speed;
  }

}