Ball[] ball = new Ball[1000];

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
      float x1 = ball[i].x;
      float y1 = ball[i].y;
      
      for(int j = 0; j<ball.length-1; j++){
        if(ball[j] != ball[i]){
          float x2 = ball[j].x;
          float y2 = ball[j].y;
          float d = dist(x1,y1,x2,y2);
          if(d<15){
            stroke(255,150);
            line(x1, y1, x2, y2);
          }
        }
      }
  }
}