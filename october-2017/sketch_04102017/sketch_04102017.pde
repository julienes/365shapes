ArrayList<Engrenage>engrenage;
void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
  engrenage = new ArrayList<Engrenage>();
  for(int x = 100; x < 450;  x+= 60){
    for(int y = 100; y < 450;  y+= 60){
      engrenage.add(new Engrenage(x, y));
    }
  }
}




void draw(){
  background(6,7,175);
  for(Engrenage eng : engrenage){
    eng.display();
  }
}