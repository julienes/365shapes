class CircleSystem{
  ArrayList<Circle> circle;
  int total = 10;
  float speed = 0.1;
  float angle;
  float baseX, baseY;
  CircleSystem(float _baseX, float _baseY, float _angle){
    circle = new ArrayList<Circle>();
    baseX = _baseX;
    baseY = _baseY;
    angle = _angle;
  }
  
  void display(){
    angle = angle + speed;
    for(int i = 0; i<=total; i++){
      float s = map(i,0,total,10,40);
      circle.add(new Circle(baseX, baseY,s, angle));
    }
    for(int i= circle.size()-1; i>0; i--){
       Circle c = circle.get(i);
       c.display();
       if(c.isDead()){
         circle.remove(i);
       }
    }
  }
}