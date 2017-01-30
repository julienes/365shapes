Ball[] ball = new Ball[10];

void setup(){
  size(500,500, P3D);
  smooth();
  for(int i = 0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=ball.length-1; i++){
    ball[i].update();
    ball[i].display();
  }

}