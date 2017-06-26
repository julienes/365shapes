class Snake{
  float x, y , z;
  float alpha = 255;
  Snake(float _x, float _y, float _z){
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
    alpha-=0.9;
    fill(255,alpha);
    pushMatrix();
    translate(x,y,z);
    sphere(5);
    popMatrix();
  }
}