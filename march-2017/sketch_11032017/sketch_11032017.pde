Ball[] ball = new Ball[40];
void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<= ball.length-1; i++){
    PVector pos = new PVector(random(100,400), random(-7500,0));
    PVector vel = new PVector(0,0);
    PVector acc = new PVector(0,0);
    ball[i] = new Ball(pos, vel, acc, 20);
    println(pos);
  }
}

void draw(){
  background(6,7,175);
  stroke(0);
  for(int i = 0; i<= ball.length-1; i++){
  ball[i].draw();
  PVector gravite = new PVector(0, 10);
  ball[i].appliqueForce(gravite);
  if(ball[i].pos.y >100 && ball[i].pos.y <500){
    ball[i].appliqueViscositeForce(5);
  }
  }
}