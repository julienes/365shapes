class Repulse {
  float x, y;
  float angle;
  float speed = 0.05;
  int R = 100;
  float z = 0;
  boolean down = false;
  
  Repulse(){
  
  }
  
  void update(){
    if(down){
      z-=5;
      if(z <= -150){
        down = false;
      }
    }
    if(!down){
      z+=5;
      if(z >= 150){
        down = true;
      }
    }
  }
  
  void display(){
    fill(255);
    noStroke();
    pushMatrix();
    translate(0,0,z);
    sphere(50);
    popMatrix();
  }
}