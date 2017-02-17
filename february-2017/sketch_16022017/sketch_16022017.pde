ArrayList<Ball> ball;
PVector pos;
PVector vel = new PVector(0,0);
PVector acc = new PVector(0,0);
float r;
void setup(){
  size(500,500,P3D);
  smooth();
  ball = new ArrayList<Ball>();
}

void draw(){
  lights();
  spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200);
  r = random(0,1);
  pos = new PVector(random(20,480), random(-200,0));
  background(7,11,96);
  stroke(0);
  for(int i = ball.size()-1; i>=0; i--){
  Ball b = ball.get(i);
  b.draw();
  PVector gravite = new PVector(0, 30);
  b.appliqueForce(gravite);
  b.appliqueViscositeForce(2);
  if(b.isDead()){
      ball.remove(i);
    }
  }
  if(r<=0.1){
    ball.add(new Ball(pos, vel, acc, random(40,80)));
  }
  println(ball.size());
}