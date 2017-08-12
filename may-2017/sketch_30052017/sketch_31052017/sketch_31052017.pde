ArrayList<PVector> spots;
Ball[] ball = new Ball[400];
float n = 3;

void setup(){
  size(500,500);
  smooth();
  spots = new ArrayList<PVector>();
  for(float u = 0; u<=100; u+=0.01){
    float x = cos(PI/n)*cos(PI/n*(2*floor(u)+1))-(2*u-2*floor(u)-1)*sin(PI/n)*sin(PI/n*(2*floor(u)+1));
    float y = cos(PI/n)*sin(PI/n*(2*floor(u)+1))+(2*u-2*floor(u)-1)*sin(PI/n)*cos(PI/n*(2*floor(u)+1));
    spots.add(new PVector(x,y));
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }

}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=ball.length-1; i++){
    PVector v1 = ball[i].position;
    ball[i].move();
    ball[i].display();
    for(int j = 0; j<=ball.length-1; j++){
      PVector v2 = ball[j].position;
      float d = v1.dist(v2);
      if(d<30 && v1 != v2){
        stroke(255,d);
        line(v1.x, v1.y, v2.x, v2.y);
      }
    }
  }
}