class Ball{
  float x, y,z;
  float alpha = 255;
  Ball(float newX, float newY, float newZ){
    x = newX;
    y = newY;
    z = newZ;
  }
  
  void move(){
    alpha-=5;
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
    pushMatrix();
    translate(x,y,z);
    rotateX(random(TWO_PI));
    box(30);
    popMatrix();
  }
}