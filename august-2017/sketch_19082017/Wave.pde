class Wave{
  float angle1, angle2;
  float x,y;
  int inc;
  float speed = 0.2;
  boolean change = false;
  Wave(float _x, float _y, float _angle1, float _angle2, int _inc){
    x = _x;
    y = _y;
    angle1 = _angle1;
    angle2 = _angle2;
    inc = _inc;
  }
  
  void update(){
    if(!change){
      angle1+=speed;
      if(angle1 >=TWO_PI){
        change = true;
      }
    }
    if(change){
      angle1-=speed;
      if(angle1 <= 0){
        change = false;
      }
    }
  }
  
  void display(){
    arc(x,y,inc,inc, angle1, angle2);
  }
}