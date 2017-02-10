class CircleSystem{
  ArrayList<Circle> circle;
  float x,y;
  float angle;
  float speed = random(0.01,0.05);
  float base = 0;
  float t = 0;
  CircleSystem(){
    circle = new ArrayList<Circle>();
  }
  
  void display(){
    move();
    for(int i = 0; i<circle.size(); i++){
    Circle c = circle.get(i);
    c.update();
    c.display();
      if(c.isDead()){
        circle.remove(i);
      }
    }
    circle.add(new Circle(x, y));
  }
  
   void move(){
    t = t + 0.03;
    float n = noise(t);
    n = map(n, 0,1, 70,130);
    x = base + sin(angle) * n;
    y = base + cos(angle) * n;
    angle = angle + speed;
  }
}