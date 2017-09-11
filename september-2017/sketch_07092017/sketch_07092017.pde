Ball[] ball = new Ball[1200];
float angle = 0;

void setup(){
  size(500,500,P3D);
  smooth();
  noFill();
  strokeWeight(3);
  for(int i = 0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  translate(width/2, height/2);
  rotateY(angle);
  background(6,7,175);
  for(int i = 0; i<=ball.length-1; i++){
    PVector v1 = ball[i].position;
    ball[i].update();
    ball[i].display();
    for(int j = 0; j<=ball.length-1; j++){
      PVector v2 = ball[j].position;
      float d = v1.dist(v2);
      if(d<50 && v1 != v2){
        stroke(255,d);
        line(v1.x, v1.y, v1.z, v2.x, v2.y, v2.z);
      }
    }
  }
  angle+= 0.02;
}