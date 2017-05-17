class Circle{
  float size;
  Circle(float _size){
     size = _size;
  }
  
  void display(){
    ellipse(0,0, size, size);
  }
}