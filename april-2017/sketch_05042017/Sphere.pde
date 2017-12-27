class Sphere{
  float x,y,z,s;
  boolean grow = true;
  Sphere(float _x, float _y, float _z, float _s){
    x = _x;
    y = _y;
    z = _z;
    s = _s;
  }
  
  void display(){
    fill(255);
    noStroke();
    pushMatrix();
    translate(x,y,z);
    sphere(s);
    popMatrix();
  }
  
  void update(){
    if(grow == true){
      s+=0.5;
      if(s>20){
        grow = false;
      }
    }else if(grow ==false){
      s-=0.5;
      if(s<0){
        grow = true;
      }
    }  
  }
}