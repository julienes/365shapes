class Square{
  float x, y,angle;
  float speed = 0.01;
  boolean up = true;
  float upper;
  Square(float _x, float _y, float _r, float d){
    x = _x;
    y = _y;
    angle = _r;
    upper = d;
  }
  
  void update(){
    if(up){
      upper+=0.08;
      y = y + upper;
      if( upper >= 1){
        up = false;
        upper = 0;
      }
    }
    if(!up){
      upper-=0.08;
      y = y + upper;
      if( upper <= -1){
        up = true;
        upper = 0;
      }
    }
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    sphere(30);
    popMatrix();
    angle = angle + speed;
  }
}