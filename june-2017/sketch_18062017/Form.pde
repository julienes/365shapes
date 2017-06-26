class Form{
  float x,y,z;
  float alpha = 255;
  Form(float _x, float _y, float _z){
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
    alpha -= 0.4;
    fill(255,alpha);
    noStroke();
    pushMatrix();
    translate(0,0,z);
    ellipse(x,y,10,10);
    popMatrix();
  }
}