ArrayList<PVector> tree;
int r = 5;

void setup(){
  size(500,500);
  smooth();
  tree = new ArrayList<PVector>();
  
  
  tree.add(new PVector(width/2, height/2));
}


void draw(){
  background(6,7,175);
  
  PVector walker = new PVector(random(width), random(height));
  boolean stuck = false;
  while(!stuck){
    for(int i = 0; i< tree.size(); i++){
      PVector t = tree.get(i);
      float d = PVector.dist(walker, t);
      if(d < r*1.5) {
        stuck = true;
        break;
      }
    }
    
    PVector vel = PVector.random2D();
    walker.add(vel);
    walker.x = constrain(walker.x, 0, width);
    walker.y = constrain(walker.y, 0, height);
  }
  
  tree.add(walker);
  
  for(int i = 0; i< tree.size(); i++){
    PVector t = tree.get(i);
    stroke(255);
    strokeWeight(r);
    point(t.x, t.y);
  }
}