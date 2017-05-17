Ball[] ball = new Ball[9];
Ball ballCentre;
void setup(){
  size(500,500, P3D);
  smooth();
    PVector pos = new PVector(width/2, height/2, 0);
    PVector vel = new PVector(0,0,0);
    PVector acc = new PVector(0,0,0);
    ballCentre = new Ball(pos, vel, acc, 50);
    
    for(int i = 0; i<= ball.length-1; i++){
    float size = random(10, 20);
    pos = new PVector(random(50, 100),height/2, 0);
    vel = new PVector(0, 0, i);
    ball[i] = new Ball(pos, vel, acc, size);
    }
}

void draw(){;
  background(6,7,175);
   lights();
    spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200);
    noStroke();
  for(int i = 0; i<= ball.length-1; i++){
    if(i>0){
      PVector grav = ballCentre.getGraviteForce(ball[i]);
      ball[i].appliqueForce(grav);
      ball[i].draw();
    }
  }
  fill(255);
  ballCentre.draw();
}