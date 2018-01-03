ArrayList<Knot>knot;

float angle = 0;
float speed = 0.03;
float beta = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(4);
  knot = new ArrayList<Knot>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateZ(angle);
  rotateY(angle);
  if(beta < PI){
    beta += 0.01;
    knot.add(new Knot(beta));
  }else{
    beta = 0;
  }
  beginShape();
  for(int i = 0; i <= knot.size()-1; i++){
    Knot k = knot.get(i);
    k.display();
  }
  endShape();
  angle += speed;
}