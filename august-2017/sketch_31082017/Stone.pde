class Stone{
  float x, y, size;
  boolean grow = true;
  Stone(float _x, float _y, float _size){
    x = _x;
    y = _y;
    size = _size;
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    box(15, 35, size);
    popMatrix();
  }
  
  
}