class Flocon{
  float r = 0;
  float speed = 0.02;
  Flocon(){
  
  }
  
  void display(){
    stroke(255);
    pushMatrix();
    scale(0.3);
    rotate(r);
      for(int i = 0; i < 5; i++){
        float angle = map(i, 0, 5, 0, TWO_PI);
        pushMatrix();
        rotate(angle);
        rect(-50,-100,150,150);
        triangle(0,-100,50,0,-50,0);
        popMatrix();
      }
    popMatrix();
    r+=speed;
  }
}