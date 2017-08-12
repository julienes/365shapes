class Star{
  float x, y;
  Star(float _x, float _y){
    x = _x;
    y = _y;;
  }
  
  void display(){
    fill(255);
    ellipse(x, y, 2,2);
  }
}