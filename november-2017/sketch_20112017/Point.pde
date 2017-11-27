class Point{
  float x,y;
  float vx = 0;
  float cx = 0;
  float cy = 0;
  float ix, iy;
  Point(float _x, float _y){
    x = _x;
    y = _y;
    ix = x;
    iy = y;
  }
  
  void move(){
    vx += (ix - x) / vars.viscosity;
    
    float dx = ix - ballx;
    float dy = y - bally;
    
    if((ballDirectionX > 0 && ballx > x) || (ballDirectionX < 0 && ballx < x)){
      if(sqrt(dx * dx) < vars.mouseDist && sqrt(dy * dy) < gap){
        vx = ballSpeedX / 8;
      }
    }
    
    vx *= (1 - vars.damping);
    x += vx;
  }
}