class Sphera{
  float x,y,z;
  float alpha = 255;
  Sphera(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }
  
  void display(){
    alpha-=0.5;
    fill(255,alpha);
    noStroke();
    pushMatrix();
    translate(x,y,z);
    ellipse(0,0,10,10);
    popMatrix();
  }
}