class Circle{
  float x, y,i;
  float size = 20;
  float r = 20;
  boolean grow = true;
  Circle(float _i){
   i = _i;
  }
  
  void display(){
    if(grow){
      r+=0.5;
      if(r>20){
        grow = false;
      }
    }
    if(!grow){
      r-=0.5;
      if(r<0){
        grow = true;
      }
    }
    
    fill(255);
    strokeWeight(5);
    stroke(36,53,194);
    x = sin(i)*r;
    y = cos(i)*r;
    ellipse(x,y,size,size);
  }
}