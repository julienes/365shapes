class Walker{
  PVector pos;
  boolean stuck = false;
  int r = 5;
  
  Walker(float x, float y, boolean _stuck){
    //stuck = _stuck;
    pos = new PVector(x, y);
  }
  
  boolean checkStuck(ArrayList<Walker> others){
      for(int i = 0; i< others.size(); i++){
        Walker o = others.get(i);
        float d = distSq(pos, o.pos);
        if(d < (r * r * 4)) {
          stuck = true;
          return true;
          //break;
        }
      }
      return false;
  }
  
  
  void walk(){
    PVector vel = PVector.random2D();
    pos.add(vel);
    pos.x = constrain(pos.x, 100, width-100);
    pos.y = constrain(pos.y, 100, height-100);
  }
  
  
  void show(){
    stroke(255);
    strokeWeight(2);
    if(stuck) {
      noFill();
      stroke(255);
    }else{
      fill(255);
      noStroke();
    }
    ellipse(pos.x, pos.y, r, r);
  }
  
  float distSq(PVector a, PVector b){
    float dx = b.x - a.x;
    float dy = b.y - a.y;
    return dx * dx + dy * dy;
  }
  
}