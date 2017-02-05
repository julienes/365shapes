Ball[] ball = new Ball[1000];
float scalar = 0;
float angle = 0;
float zoom = 0;
float addition = 0;
float e;

void setup(){
  size(500,500,P3D);
  smooth();
  for(int i = 0; i<ball.length-1; i++){
    scalar = i;
    angle = angle + 0.1;
    ball[i] = new Ball(scalar, angle);
  }
}

void draw(){
  noStroke();
  background(7,11,96);
  zoom = zoom + e;
  translate(0,0,zoom);
  for(int i = 0; i<ball.length-1; i++){
    pushMatrix();
    translate(0,0,i);
     ball[i].move();
    ball[i].display();
    popMatrix();
  }
}

void mouseWheel(MouseEvent event) {
  e = event.getCount();
  println(e);
}


class Ball{
  float angle = 0;
  float speed = 0.05;
  float x, y;
  float mult = 0;
  Ball(float newMult, float newAngle){
    angle = newAngle;
    mult = newMult;
  }
  
  void move(){
    x = 250 + sin(angle) * mult;
    y = 250 + cos(angle) * mult;
  }
  
  void display(){
    ellipse(x,y,10,10);
  }
}