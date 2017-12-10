ArrayList<Pattern>pattern;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  pattern = new ArrayList<Pattern>();
  for(int x = 100; x <= width-100; x+=15){
    for(int y = 100; y <= height-100; y+=8){
      float r = floor(random(3));
      pattern.add(new Pattern(x,y,r));
    }
  }
}

void draw(){
  background(6,7,175);
  for(Pattern p : pattern){
    p.display();
  }
}