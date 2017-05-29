class Circle{
  float alpha = 255;
  float x,y,z;
  Circle(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }  
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    alpha--;
    noStroke();
    fill(255,alpha);
    pushMatrix();
    translate(x,y,z);
    sphere(5);
    popMatrix();
  }
}