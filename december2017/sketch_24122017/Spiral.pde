class Spiral{
  float angle;
  float R = 0;
  float n;
  float alpha = 255;
  Spiral(float _a, float _n){
    angle = _a;
    n = _n;
  }
  
  boolean isDead(){
    if(R > 100){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    float d = noise(n);
    float x = R * cos(angle);
    float y = R * sin(angle);
    vertex(x * 2 + (d*100),y + (d*100));
    R+=0.2;
    angle+=0.1;
    n+=0.01;
  }
}