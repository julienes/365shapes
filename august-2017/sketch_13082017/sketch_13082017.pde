ArrayList<Square>square;
int count = 0;
void setup(){
  size(500,500);
  smooth();
  noStroke();
  square = new ArrayList<Square>();
  for(int x = -150; x<=150; x+=5){
    count+=10;
    for(int y = -15; y<=15; y+=5){
      square.add(new Square(x,y, count));
    }
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(Square s : square){
    s.update();
    s.display();
  }
}