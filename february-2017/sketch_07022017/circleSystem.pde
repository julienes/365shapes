class circleSystem {
  float angle = 0;
  Circle[] circle = new Circle[21];
  circleSystem(){
    for(int i = 0; i<=circle.length-1; i++){
      angle = angle + 0.3;
      circle[i] = new Circle(angle);
    }
  }
  
  void display(){
    for(int i = 0; i<=circle.length-1; i++){
      circle[i].move();
      circle[i].display();
    }
  }
}