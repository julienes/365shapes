class Pyramid {
  float x,y,z;
  boolean grow;
  float count;
  Pyramid(float _x, float _y, float _z){
   x = _x;
   y = _y;
   z = _z;
  }
  
  
  void update(float r){
    rotateZ(r);
  }
  
  void display(){
    for(float a = z-100; a<=x; a+=10){
      for(float b = z-100; b<=y; b+=10){
        pushMatrix();
        translate(a,b,z);
        box(10);
        popMatrix();
      }
    }
  }
}