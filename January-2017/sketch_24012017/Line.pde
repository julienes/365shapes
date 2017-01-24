class Line{
  float r = 0;
  float angle = 0;
  Line(){
    
  }
  
  
  void move(){
    r = r + QUARTER_PI/6;
    rotate(r);
  }
  void display(){
    rectMode(CENTER);
    rect(0, 0, 10, 1);
  }
}