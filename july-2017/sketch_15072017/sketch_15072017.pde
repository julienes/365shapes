ArrayList<CircleSystem>circle;
float total = 8;
float posX, posY;
void setup(){
  size(500,500);
  circle = new ArrayList<CircleSystem>();
  strokeWeight(3);
  circle.add(new CircleSystem(0, 0, 0));
  circle.add(new CircleSystem(50, 0, PI));
  circle.add(new CircleSystem(100, 0, TWO_PI));
  circle.add(new CircleSystem(100, 50, 0));
  circle.add(new CircleSystem(100, 100, PI));
  circle.add(new CircleSystem(50, 100, TWO_PI));
  circle.add(new CircleSystem(0, 100, 0));
  circle.add(new CircleSystem(0, 50, PI));
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2-80);
  rotate(QUARTER_PI);
  scale(1.2);
  for(CircleSystem c : circle){
  c.display();
  }
}