ArrayList<Arrow> arrow;
void setup(){
  size(500,500);
  smooth();
  noStroke();
  arrow = new ArrayList<Arrow>();
  for(int x = 100; x<=400; x+=50){
    for(int y = 100; y<=400; y+=50){
      arrow.add(new Arrow(x,y, random(1)));
    }
  }
}

void draw(){
  background(19,65,188);
  for(Arrow a : arrow){
    a.display();
  }
}