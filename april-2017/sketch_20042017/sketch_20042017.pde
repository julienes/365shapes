Ball[] ball = new Ball[100];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<=ball.length-1; i++){
    ball[i] = new Ball(random(-200,200), random(-200,200));
  }
}

void draw(){
  background(35,53,193);
  translate(width/2, height/2);
  for(int i = 0; i<=ball.length-1; i++){
    PVector v1 = ball[i].position;
    ball[i].update();
    ball[i].display();
    for(int j = 0; j<=ball.length-1; j++){
      PVector v2 = ball[j].position;
      float d = v1.dist(v2);
      if(d<50 && v1 != v2){
        stroke(255,d);
        line(v1.x, v1.y, v2.x, v2.y);
      }
    }
  }
}