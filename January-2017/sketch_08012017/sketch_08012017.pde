ArrayList<Line> l;
void setup() {
  size(500, 500);
  smooth();
  l = new ArrayList<Line>();
}

void draw() {
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = l.size()-1; i >=0; i--){
    Line line = l.get(i);
    line.update();
    line.display();
    if(line.isDead()){
      l.remove(i);
    }
  }
  l.add(new Line());
}