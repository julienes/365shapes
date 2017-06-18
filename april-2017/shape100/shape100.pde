ArrayList<Fireworks>fireworks;
PVector gravity;

void setup(){
  size(500,500);
  gravity = new PVector(0,0.2);
  fireworks = new ArrayList<Fireworks>();
  background(6,7,175,20);
}

void draw(){
  fill(6,7,175,50);
  noStroke();
  rect(0,0,width,height);
  stroke(255);
  strokeWeight(2);
  if(random(1)<0.01){
    fireworks.add(new Fireworks());
  }
  for(int i = fireworks.size()-1; i>=0; i--){
  Fireworks f = fireworks.get(i);
  f.update();
  f.show();
  if(f.done()){
    fireworks.remove(i);
  }
  }
}