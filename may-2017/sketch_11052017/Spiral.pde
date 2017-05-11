class Spiral{
  float x,y;
  float size;
  Spiral(float _x, float _y, float _size){
    x = _x;
    y = _y;
    size = _size;
  }
  
  void display(){
    ellipse(x,y,size,size);
  }
}