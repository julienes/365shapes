class Particule{
  PVector position;
  float alpha = 255;
  PVector base = new PVector(0,0);
  PVector acceleration;
  int s;
  Particule(float x, float a, int _s){
    position = new PVector(x, 450);
    acceleration = new PVector(0,a);
    s = _s;
  }
  
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }  
  }
  
  void update(){
    alpha -= 9;
    base.add(acceleration);
    position.add(base);
  }
  
  void display(){
    noStroke();
    fill(255, alpha);
    ellipse(position.x, position.y, s,s);
  }
}