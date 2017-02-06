class Circle{
   float x,y;
   
  Circle(float newX, float newY){
    x = newX;
    y = newY;
  }
  
  void display(){
    stroke(255);
    noFill();
    vertex(x,y);
  }
}