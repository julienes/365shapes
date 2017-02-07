circleSystem cs;

void setup(){
  size(500,500);
  smooth();  cs = new circleSystem();

}

void draw(){
  translate(width/2, height/2);
  background(7,11,96);
  cs.display();
}