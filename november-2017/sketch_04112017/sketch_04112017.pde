ArrayList<PVector>path;
float angle = 0;
int resolution = 10;
Orbit sun;
Orbit end;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
  path = new ArrayList<PVector>();
  sun = new Orbit(250,250, 80, 0);
  Orbit next = sun;
  for(int i = 0; i < 20; i++){
    next = next.addChild();
  }
  end = next;
}

void draw(){
  background(6,7,175); 
    for(int i = 0; i < resolution; i++){
    Orbit next = sun;
    while(next != null){
      next.update();
      next.show();
      next = next.child;
    }
    path.add(new PVector(end.x, end.y));
  }
  
  
  beginShape();
  for(int i = 0; i < path.size(); i++){
    PVector pos = path.get(i);
    vertex(pos.x, pos.y);
    if(path.size() > 2500){
      path.remove(0);
    }
  }
  endShape();
}