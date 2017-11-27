class Triangle extends Shape{
  Triangle(){
  
  }
  
  void display(){
    pushMatrix();
    rotate(-HALF_PI);
    beginShape();
    for(int i = 0; i <= 3; i++){
      float angle = map(i,0,3, 0, TWO_PI);
      float x = 100 * cos(angle);
      float y = 100 * sin(angle);
      vertex(x,y);
    }
    endShape();
    popMatrix();
  }
}