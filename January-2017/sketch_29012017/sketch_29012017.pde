Arc[] arc = new Arc[8];
void setup(){
  size(500, 500);
  smooth();
  for(int i=0; i<=arc.length-1;i++){
    arc[i] = new Arc();
  }

}

void draw(){
  background(6,7,175);
  for(int i=0; i<=arc.length-1;i++){
    pushMatrix();
    translate(width/2, height/2);
    scale(2);
    beginShape();
    arc[i].move();
    arc[i].display();
    arc[i].colors();
    endShape();
    popMatrix();
  }
}