Ball[] ball = new Ball[300];

void setup(){
  size(500,500, P3D);
  smooth();
  fill(255);
  for(int i = 0; i<ball.length-1; i++){
  ball[i] = new Ball();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2,10);
  lights();
  for(int i = 0; i<ball.length-1; i++){
      ball[i].display();
  }
}