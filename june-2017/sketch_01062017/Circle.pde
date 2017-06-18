class Circle{
  float s;
  float z;
  boolean grow = true;
  Circle(float _s, float _z){
    s = _s;
    z = _z;
  }
  
  void update(){
    if(grow){
      z+=0.1;
      if(z>=12){
        grow = false;
      }
    }
    if(!grow){
      z-=0.1;
      if(z<=-12){
        grow = true;
      }
    }
  }
  
  void display(){
    translate(0,0,z);
    ellipse(0,0,s,s);
  }
}