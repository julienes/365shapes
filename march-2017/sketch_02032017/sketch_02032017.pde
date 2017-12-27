ArrayList<Line>line;

void setup(){
  size(500,500);
  smooth();
  line = new ArrayList<Line>();
  for(int i = -100; i<=100; i+=2){
    line.add(new Line(i));
  }
}


void draw(){
  background(5,15,230);
  translate(width/2,height/4);
  for(Line l : line){
    l.move();
    l.display();
  }
}