ArrayList<PVector> spots;
Repulse repulse;
Ball[] ball = new Ball[5000];
PImage img;
void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(3);
  repulse = new Repulse();
  spots = new ArrayList<PVector>();
  for(int i = 0; i < 200; i++){
    float lat = map(i, 0, 200, 0, PI);
    for(int j = 0; j < 200; j++){
      float lon = map(j, 0, 200, 0, TWO_PI);
      float x = 80 * sin(lat) * cos(lon);
      float y = 80 * sin(lat) * sin(lon);
      float z = 80 * cos(lat);
      spots.add(new PVector(x,y,z));
    }
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2, -70);
  rotateY(PI/4);
  lights();
  repulse.display();
  repulse.update();
  for(int i = 0; i<=ball.length-1; i++){
    ball[i].behaviors();
    ball[i].update();
    ball[i].show();
  }
}