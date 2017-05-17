class Ball{
  float x, y, x2, y2;
  float alpha = 255;

  
  Ball(float newX, float newX2, float newY, float newY2){
    x = newX;
    y = newY;
    x2 = newX2;
    y2 = newY2;
  }
   boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    alpha = alpha-4;
    stroke(255,alpha);
    fill(6,7,175, alpha);
    line(250, 250, x, y);
    line(x, y, x2, y2);
    ellipse(x, y, 25,25);
    ellipse(x2, y2, 12.5,12.5);
    ellipse(250, 250, 50,50);
  }
  
}