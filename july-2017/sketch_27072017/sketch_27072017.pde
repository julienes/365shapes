Ball[] ball = new Ball[3000];
float rotation;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(10);
  noStroke();
  for(int i = ball.length-1; i>=0; i--){
    ball[i] = new Ball();
  }
}


void draw(){
  background(6,7,175);
  lights();
  rotation+=0.05;
  translate(width/2, height/2);
  rotateY(rotation);
  for(int i = ball.length-1; i>=0; i--){
    ball[i].update();
    ball[i].display();
  }
}