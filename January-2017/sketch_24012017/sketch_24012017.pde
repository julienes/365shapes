ArrayList <Line> line;

void setup(){
  size(500,500);
  smooth();
  line = new ArrayList<Line>();
  for(int i = 180; i<=width-180; i+=15){
    for(int j = 180; j<=height-180; j+=15){
      line.add(new Line());
    }
  }
}

void draw(){
  background(6,7,175);
  fill(255);
  stroke(255);
  for(Line l : line){
    for(int i = 180; i<=width-180; i+=15){
      for(int j = 180; j<=height-180; j+=15){
        pushMatrix();
        translate(i,j);
        l.move();
        rectMode(CENTER);
        l.display();
        popMatrix();
      }
    }
  }
}