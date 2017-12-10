ArrayList<Flocon>flocon;

void setup(){
  size(500,500);
  smooth();
  noFill();
  strokeWeight(2);
  flocon = new ArrayList<Flocon>();
}

void draw(){
  background(6,7,175);
  translate(width/2, 50);
  if(frameCount % 10 == 0){
    flocon.add(new Flocon());
  }
  for(int i = 0 ; i < flocon.size(); i++){
    Flocon f = flocon.get(i);
    f.display();
    f.update();
    
    if(f.isDead()){
      flocon.remove(i);
    }
  }
}