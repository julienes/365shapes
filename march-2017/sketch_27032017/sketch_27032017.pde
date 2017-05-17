import peasy.*;
PeasyCam cam;

float t = 100;
float r = 150;
float rotation = 0;
float speed = 0.02;
ArrayList<PVector>tor;
int total = 75;
Ball[] ball = new Ball[2000];
void setup(){
  size(500,500, P3D);
  smooth();
  cam = new PeasyCam(this, 1000);
  strokeWeight(2);
  tor = new ArrayList<PVector>();
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      tor.add(new PVector(x,y,z));
    }
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  lights();
  noFill();
  background(6,7,175);
  stroke(255);
  for(int i = 0; i<=ball.length-1; i++){
    beginShape();
    ball[i].behaviors();
    ball[i].update();
    ball[i].show();
    endShape();
  }
}