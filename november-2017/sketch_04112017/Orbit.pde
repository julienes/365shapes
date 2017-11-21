int k = 8;

class Orbit{
  float x;
  float y;
  float r;
  int n;
  Orbit parent;
  Orbit child;
  float speed;
  float angle;
  
  Orbit(float _x, float _y, float _r, int n_){
    this(_x, _y, _r, n_, null);
  }
  
  Orbit(float _x, float _y, float _r, int n_, Orbit p){
    x = _x;
    y = _y;
    r = _r;
    n = n_;
    speed = (radians(pow(k, n-1))) / resolution;
    parent = p;
    child = null;
    angle = -PI/2;
  }
  
  Orbit addChild(){
    float newr = r / 3;
    float newx = x + r + newr;
    float newy = y;
    child = new Orbit(newx, newy, newr, n+1, this);
    return child;
  }
  
  void update(){
    if(parent != null){
      angle += speed;
      float rsum = r + parent.r;
      x = parent.x + rsum * cos(angle);
      y = parent.y + rsum * sin(angle);
    }

  }
  
  void show(){
    stroke(255);
    strokeWeight(1);
    //ellipse(x,y,r*2, r*2);
  }
}