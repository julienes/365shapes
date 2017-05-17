class Grid{
  PVector position;
  Grid(float _x, float _y){
    position = new PVector(_x,_y);
  }
  
  void display(){
    ellipse(position.x,position.y,5,5);
  }
}