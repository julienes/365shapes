Ball[] ball = new Ball[10];
Ball ballCentre;
void setup(){
  size(500,500);
  smooth();
    PVector pos = new PVector(width/2, height/2);
    PVector vel = new PVector(0,0);
    PVector acc = new PVector(0,0);
    ballCentre = new Ball(pos, vel, acc, 50);
    
    for(int i = 0; i<= ball.length-1; i++){
    pos = new PVector(random(100,400),random(200,250));
    vel = new PVector(0, 1);
    ball[i] = new Ball(pos, vel, acc, random(10,20));
    }
}

void draw(){;
  background(7, 11, 96);
  for(int i = 0; i<= ball.length-1; i++){
   noFill();
  stroke(255);
  PVector grav = ballCentre.getGraviteForce(ball[i]);
  ball[i].appliqueForce(grav);
  ball[i].draw();
  }
  fill(255);
  ballCentre.draw();
}