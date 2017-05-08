class Courbe{
  float alpha = 255;
  float x,y;
  Courbe(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  
  boolean end(){
    alpha-=2;
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  void display(){
   stroke(255,alpha);
   ellipse(x,y,4,4);
  }
}