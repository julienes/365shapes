Ball[] ball = new Ball[80];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<ball.length; i++){
    float r = i/1.1;
    float x = sin(r)*100;
    float y = cos(r)*100;
    float s = i;
    ball[i] = new Ball(x,y,s);
  }
}

void draw(){
  noFill();
  background(6,7,175);
  stroke(255);
  strokeWeight(2);
  translate(width/2, height/2);
  for(int i = 0; i<ball.length; i++){
    ball[i].update();
    ball[i].display();
  }
}