ArrayList<CircleSystem> circle;

void setup(){
  size(500,500);
  smooth();
  circle = new ArrayList<CircleSystem>();
  for(int x = 150; x<=350; x+=50){
    for(int y = 150; y<=350; y+=50){
      circle.add(new CircleSystem(x,y));
    }
  }
}

void draw(){
  background(6,7,175);
  for(CircleSystem c : circle){
    c.display();
  }
}