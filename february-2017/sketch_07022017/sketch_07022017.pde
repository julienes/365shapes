circleSystem cs;

void setup(){
  size(500,500);
  smooth();  cs = new circleSystem();

}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  cs.display();
}