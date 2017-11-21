class Orbit{
  float x;
  float y;
  float r;
  Orbit parent;
  Orbit child;
  float speed;
  float angle;
  
  Orbit(float _x, float _y, float _r, float s){
    this(_x, _y, _r, s, null);
  }
  
  Orbit(float _x, float _y, float _r, float s, Orbit p){
    x = _x;
    y = _y;
    r = _r;
    speed = s;
    parent = p;
    child = null;
    angle = 0;
  }
  
  Orbit addChild(){
    float newr = r * 0.6;
    float newx = x + r + newr;
    float newy = y;
    child = new Orbit(newx, newy, newr, -speed, this);
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
    strokeWeight(2);
    ellipse(x,y,r*2, r*2);
  }
}