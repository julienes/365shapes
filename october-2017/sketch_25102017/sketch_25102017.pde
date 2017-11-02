int i = 3;
ArrayList<Poly>polygon;
int num = 2;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(5);
  polygon = new ArrayList<Poly>();
  for(int x = 100; x <= 400; x+= 60){
    for(int y = 100; y <= 400; y+= 60){
      num++;
      polygon.add(new Poly(x,y,num, 30, num));
    }
  }
}

void draw(){
  background(6,7,175);
  for(Poly p : polygon){
    p.display();
  }
}