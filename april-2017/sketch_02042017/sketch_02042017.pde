ArrayList<Stick>sticks;
void setup(){
  size(500,500);
  smooth();
  sticks = new ArrayList<Stick>();
  for(int x = 150; x<width-150; x+=15){
    for(int y = 150; y<height-150; y+=15){
      sticks.add(new Stick(x,y,x,y));
    }
  }
}

void draw(){
  background(35,53,193);
  stroke(255);
  strokeWeight(5);
  for(Stick s : sticks){
    s.update();
    s.display();
  }
}