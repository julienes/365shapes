ArrayList<PVector>path;
float angle = 0;
Orbit sun;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
  path = new ArrayList<PVector>();
  sun = new Orbit(250,250, 50, 0.04);
  Orbit next = sun;
  for(int i = 0; i < 5; i++){
    next = next.addChild();
  }
}

void draw(){
  background(6,7,175); 
  Orbit next = sun;
  while(next != null){
  next.update();
  next.show();
  next = next.child;
  }
}