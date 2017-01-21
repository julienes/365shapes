float constant = 250;
float angle = 0;
float speed = 0.05;
int number = 200;
float[] x = new float[number];
float[] y = new float[number];
float[] x2 = new float[number];
float[] y2 = new float[number];
float t = 0;
void setup(){
  size(500, 500);
  smooth();
  stroke(255, random(100,255));
  for(int i=0; i<=number-1; i++){
    x[i]= constant + sin(angle)*50;
    y[i] = constant + cos(angle)*50;
    x2[i]= constant + sin(angle)*random(100,200);
    y2[i] = constant + cos(angle)*random(100,200);
    angle = angle+speed;
  }
}

void draw(){
  background(6,7,175);
  t = t+ 0.009;
  float n = noise(t);
  for(int i=0; i<=number-1; i++){
    x2[i] = x2[i] + sin(angle)*n;
    y2[i] = y2[i] + cos(angle)*n;
    line(x[i],y[i],x2[i],y2[i]);
  }
  angle = angle+speed;
}