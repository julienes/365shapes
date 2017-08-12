class ShootingStar{
  PVector location;
  PVector base = new PVector(0,0);
  PVector acceleration = new PVector(random(-1,1),random(-1,1));
  float alpha = 255;
  ShootingStar(float x, float y){
    location = new PVector(x,y);
  }
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  
  void display(){
    alpha-=15;
    fill(255, alpha);
    ellipse(location.x, location.y, 4,4);
  }
}