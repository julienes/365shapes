class Circle{
  float x;
  float y;
  float r1 = 0;
  float r2 = 0;
  boolean growing = true;
  
  Circle(float x_, float y_){
    x = x_;
    y = y_;
    //r = 1;
  }
  
   void grow(){
    if(growing){
      r1 = r1 + 1;
      r2 = r1/2 + 1;
    }
  }
  
  boolean edges(){
    return(x + r1/2 >300 || x - r1/2 <100 || y + r2/2 > 300 || y - r2/2 < 100);
  }
  
  void show(){
    stroke(19,65,188);
    rectMode(CENTER);
    rect(x,y,r1,r2);
  }
}