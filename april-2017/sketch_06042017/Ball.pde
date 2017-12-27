class Ball{
  float x, y,z;
  float alpha = 255;
  Ball(float newX, float newY, float newZ){
    x = newX;
    y = newY;
    z = newZ;
  }
  
  void move(){
    alpha-=2;
  }
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    stroke(255,alpha);
    sphereDetail(4);
    noFill();
    pushMatrix();
    translate(x,y,z);
    sphere(5);
    popMatrix();
  }
}