class Box{
float r = random(360);

Box(){

}

void square(){
  r+=0.03;
  noFill();
  stroke(255);
  pushMatrix();
  translate(width/2, height/2,-150);
  rotateX(r);
  rotateY(r);
  box(250);
  popMatrix();
}

}