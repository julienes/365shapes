ArrayList<Walker> tree;
ArrayList<Walker>walkers;


void setup(){
  size(500,500);
  smooth();
  tree = new ArrayList<Walker>();
  walkers = new ArrayList<Walker>();
  
  
  tree.add(new Walker(width/2, height/2, true));
  
  for(int i = 0; i < 200; i++) {
    walkers.add(new Walker(random(width), random(height), false));
  }
}


void draw(){
  background(6,7,175);

  //PVector walker = new PVector(random(width), random(height));
  
  
  
  //tree.add(walker);
  
  for(int i = 0; i< tree.size(); i++){
    Walker t = tree.get(i);
    t.show();
  }
  
  for(int i = 0; i< walkers.size(); i++){
    Walker w = walkers.get(i);
    w.show();
  }
  
  for(int n = 0; n < 100; n++) {
    for(int i = 0; i< walkers.size(); i++){
      Walker w = walkers.get(i);
      w.walk();
      //w.show();
      if(w.checkStuck(tree)){
        tree.add(w);
        walkers.remove(i);
      }
    }
  }
  
}