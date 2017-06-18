class Form{
  float x, y;
  float a;
  float alpha = 255;
  Form(float _x, float _y,float _a){
    a = _a;
    x = _x;
    y = _y;
  }
  
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  void display(){
    alpha-=0.5;
    beginShape(POINTS);
    stroke(255,alpha);
    vertex(x,y);
    endShape();
  }
}