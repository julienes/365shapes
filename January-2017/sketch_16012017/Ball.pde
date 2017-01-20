class Ball{
  float x, y;
  float alpha = 255;
  Ball(float newX, float newY){
    x = newX;
    y = newY;
  }
  
  void move(){
    alpha-=0.5;
  }
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    fill(255, alpha);
    ellipse(x, y, 5 , 5);
  }
}