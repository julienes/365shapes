class Circle{
  PVector position;
  PVector limit = new PVector(0,0);
  float r;
  boolean growing = true;
  float d;
  
  Circle(float _x, float _y){
    position = new PVector(_x, _y);
    r = 1;
  }
  
  void grow(){
    if(growing){
    r = r + 1;
    }
  }
  
  boolean edges(){
    d = PVector.dist(position,limit);
    return(r+d>max || r+d<-max || r+d>max || r+d<-max );
  }
  
  void show(){
    stroke(255);
    strokeWeight(1);
    noFill();
    ellipse(position.x,position.y,r,r);
  }
}