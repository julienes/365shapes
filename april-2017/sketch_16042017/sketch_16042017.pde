ArrayList<Cross> cross;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(2);
  cross = new ArrayList<Cross>();
  for(int i = 0; i<=300; i+=40){
    for(int j = 0; j<=300; j+=40){
      cross.add(new Cross(i,j));
    }
  }
}

void draw(){
  background(6,7,175);
  translate(130,80);
  for(Cross c : cross){
    c.update();
    c.display();
  }
}