import peasy.*;

PeasyCam cam;

float x,y,z;
float angle, angle2;
ArrayList<Circle>circle;
float speed = 0.05;
float rotate;
float r = 100;

void setup(){
  size(500,500,P3D);
  smooth();
  cam = new PeasyCam(this, 500);
  circle = new ArrayList<Circle>();
}

void draw(){
  background(6,7,175);
  noFill();
  sphereDetail(10);
  move();
  for(int i = circle.size()-1; i >=0; i--){
  Circle c = circle.get(i);
  c.display();
  if(c.isDead()){
      circle.remove(i);
    }
  }
  circle.add(new Circle(x,y,z));
}

void move(){
 
 float angle2 = map(angle, 0, TWO_PI, 0 , PI);
 x = r * sin(angle2) * cos(angle);
 y = r * sin(angle2) * sin(angle);
 z = r * cos(angle2);
 angle = angle + speed;
}