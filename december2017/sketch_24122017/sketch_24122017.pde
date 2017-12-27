ArrayList<Spiral> spiral;
float t = 0;

int limit = 400;

boolean isAdding = true;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(4);
  noFill();
  spiral = new ArrayList<Spiral>();
}

void draw(){
  t+=0.01;
  float n = noise(t);
  background(6,7,175);
  translate(width/2-50, height/2-50);
  if(spiral.size() < limit && isAdding == true){
    spiral.add(new Spiral(0,n));
  }else{
    isAdding = false;
  }
  beginShape();
  for(int i = 0; i < spiral.size()-1; i++){
    Spiral s = spiral.get(i);
    s.display();
    
    if(s.isDead()){
      spiral.remove(i);
    }
  }
  endShape();
  
  if(spiral.size() <= 1){
    isAdding = true;
  }
  
  
}