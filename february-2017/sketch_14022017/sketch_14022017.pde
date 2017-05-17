ArrayList<Triangle> triangle;
float r;
void setup(){
  size(500,500);
  smooth();
  triangle = new ArrayList<Triangle>();
}

void draw(){
  background(6,7,175);
  r+=0.01;
  translate(width/2, height/2);
  for(int i = 0; i<triangle.size(); i++){
    Triangle t = triangle.get(i);
    t.update();
    pushMatrix();
    scale(5);
    t.display(r);
    popMatrix();
    pushMatrix();
    scale(3);
    t.display(r);
    popMatrix();
    t.display(r);
    if(t.isDead()){
        triangle.remove(i);
    }
  }
  triangle.add(new Triangle());

}