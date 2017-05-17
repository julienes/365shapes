class Cube{
  float x;
  float y;
  float z;
  boolean grow;
  Cube(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }
  
  void display(){
    if(grow){
    z+=3;
    if(z>=30){
      grow = false;
    }
    }
    
    if(!grow){
    z-=1;
    if(z<=0){
      grow = true;
    }
    }
    pushMatrix();
    translate(x,y,z*2);
    box(20);
    popMatrix();
  }
}