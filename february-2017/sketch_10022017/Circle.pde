class Circle{
  float x, y;
  float alpha = 255;

  Circle(float newX, float newY){
    x = newX;
    y = newY;
  }
  
  void update(){
    alpha-=4;
  }
  
  Boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    noStroke();
    fill(255, alpha);
    ellipse(x, y, 2, 2);
  }
}