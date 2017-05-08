class Circles{
  Circle[] circle = new Circle[10];
  Circles(){
    for(int i = 0; i<circle.length; i++){
      float n = map(i, 0,circle.length, 0, TWO_PI);
      circle[i] = new Circle(i*25, n);
    }
  }
  
  void display(){
    for(int i = 0; i<circle.length; i++){
      circle[i].display();
    }
  }
}