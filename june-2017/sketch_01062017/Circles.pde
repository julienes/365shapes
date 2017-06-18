class Circles{
  Circle[] circle = new Circle[20];
  Circles(){
    for(int i = 0; i<circle.length; i++){
      circle[i] = new Circle(i*10,random(-10,10));
    }
  }
  
  void display(){
    for(int i = 0; i<circle.length; i++){
      circle[i].update();
      circle[i].display();
    }
  }
}