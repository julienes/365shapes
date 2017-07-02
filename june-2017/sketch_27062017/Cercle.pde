class Cercle{
  float x,y,z;
  float count;
  float alpha = 255;
  float speed = 0.1;
  float t;
  Cercle(float _x, float _y, float _z, float _count){
    x = _x;
    y = _y;
    z = _z;
    count = _count;
  }
  

  void count(){
    count+=0.1;
    if(count>40){
      update();
    }else{
      
    }
  }
  void update(){
    if(t<=TWO_PI){
    t+=speed;
    x = x+(cos(t)+2*cos(2*t))*2;
    y = y+(sin(t)+2*sin(2*t))*2;
    z = z+(2*-1*sin(3*t));
    }else{
      count = 0;
      t = 0;
    }
  }
  
  void display(){
    pushMatrix();
    translate(0,0,z);
    rect(x,y,15,15);
    popMatrix();
  }
}