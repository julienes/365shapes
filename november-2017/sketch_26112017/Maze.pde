class Maze{
  float x,y, x2, y2;
  Maze(float _x, float _y, float _x2, float _y2){
    x = _x;
    y = _y;
    x2 = _x2;
    y2 = _y2;
  }
  
  void display(){
    line(x,y,x2, y2);
  }
}