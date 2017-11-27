class Cross extends Shape{
  Cross(){
  
  }
  
  void display(){
    pushMatrix();
    rotate(QUARTER_PI);
    line(-50,0,50,0);
    popMatrix();
    pushMatrix();
    rotate(-QUARTER_PI);
    line(-50,0,50,0);
    popMatrix();
  }
}  