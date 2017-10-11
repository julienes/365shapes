ArrayList<Circle> circle;
float count = 0;

void setup(){
  size(500,500);
  smooth();
  circle = new ArrayList<Circle>();
}

void draw(){
  background(6,7,175);
  counter();
  translate(width/2, height/2);
  for(int i = circle.size()-1; i >= 0; i--){
    Circle c = circle.get(i);
    c.update();
    c.display();
    if(c.isDead()){
      circle.remove(i);
    }
  }
}

void counter(){
  count++;
  if(count >= 100){
    circle.add(new Circle());
    count = 0;
  }
}