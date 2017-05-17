ArrayList <Circle> c;
int i = 0;

void setup(){
  size(500,500);
  smooth();
  c = new ArrayList <Circle>();
}

void draw(){
  i+=2;
  background(6,7,175);
  translate(width/2, height/2);
  beginShape();
  for(int i = 0; i<c.size(); i++){
    Circle circle = c.get(i);
    circle.display();
  }
  endShape();
  c.add(new Circle(i));
  println(c.size());
  if(c.size()>=180){
    c.remove(0);
  }
}