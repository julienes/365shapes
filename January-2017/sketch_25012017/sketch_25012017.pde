Ball[] ball = new Ball[1500];
Box[] box = new Box[3];
float z = 0;
void setup(){
  size(500, 500, P3D);
  smooth();
  for(int i = 0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
  for(int i = 0; i<=box.length-1; i++){
    box[i] = new Box();
  }
}


void draw(){
  z-=1;
  background(6,7,175);
  pushMatrix();
  translate(width/2, height/2);
  rotateZ(90);
  for(int i = 0; i<=ball.length-1; i++){
  ball[i].move();
  ball[i].display();
  }
  popMatrix();
  for(int i = 0; i<=box.length-1; i++){
    box[i].square();
  }
}