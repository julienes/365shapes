class Ball{
  float x,y,s;
  boolean grow = true;
  float aug = 1;
  Ball(float _x, float _y,float size){
    x = _x;
    y = _y;
    s = size;
  }
  
   void update(){
    if(grow == true){
      s+=aug;
      if(s>=55){
        grow = false;
      }
    }else if(grow == false){
      s-=aug;
      if(s<=4){
        grow = true;
      }
    }
  }
  
  void display(){
    ellipse(x,y,s,s);
  }
  
}