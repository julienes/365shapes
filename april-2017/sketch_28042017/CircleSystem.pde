class CircleSystem{
  int n = floor(random(5,20));
  Circle[] circle = new Circle[n];
  float x,y;
  CircleSystem(float _x, float _y){
    x = _x;
    y = _y;
    for(int i = 0; i<=circle.length-1; i++){
      circle[i] = new Circle(i);
    }
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    for(int i = 0; i<=circle.length-1; i++){
      circle[i].display();
    }
    popMatrix();
  }
}