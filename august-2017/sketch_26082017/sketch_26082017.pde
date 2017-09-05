ArrayList<PVector> spots;
Repulse repulse;
Ball[] ball = new Ball[8000];
PImage img;
void setup(){
  size(500,500);
  smooth();
  strokeWeight(3);
  repulse = new Repulse();
  spots = new ArrayList<PVector>();
  for(int x = -125; x < 125; x++){
    for(int y = -125; y < 125; y++){
        spots.add(new PVector(x,y));
    }
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  repulse.display();
  repulse.update();
  for(int i = 0; i<=ball.length-1; i++){
    ball[i].behaviors();
    ball[i].update();
    ball[i].show();
  }
}