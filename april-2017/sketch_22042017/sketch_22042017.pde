ArrayList<Ellipse>arc;
float i;
float j;
float r;
void setup(){
  size(500,500);
  smooth();
  strokeWeight(3);
  stroke(255);
  noFill();
  arc = new ArrayList<Ellipse>();
  for(int x = 100; x<=400; x+=15){
    for(int y = 100; y<=400; y+=15){
      i++;
      if(i%2 == 0){
        r = PI;
      }else{
        r = 0;
      }
      arc.add(new Ellipse(x,y,r));
    }
  }
}

void draw(){
  background(35,53,193);
  for(Ellipse a : arc){
    a.display();
  }
}