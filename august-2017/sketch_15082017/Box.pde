class Box{
  float x,y,z;
  Box(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }
  
  void display(){
    z+=0.01;
    float n = noise(z);
    float m = map(n,0,1,-50,50);
    pushMatrix();
    translate(x,y,m);
    box(20);
    popMatrix();
  }
}