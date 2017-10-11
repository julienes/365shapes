PVector[]points;
int total = 200;
float R = 200;
float angle = 0;
float speed = 0.1;
float x, y;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  points = new PVector[total+1];
  for(int i = 0; i < total+1; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    float x = 100 * cos(angle);
    float y = 100 * sin(angle);
    points[i] = new PVector(x,y);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  update();
  for(int i = 0; i < total; i++){
    PVector v1 = points[i];
    PVector v2 = points[i+1];
    line(v1.x, v1.y, v2.x, v2.y);
    bezier(v1.x, v1.y, x, y, 0, 0, v2.x, v2.y);
  }
}


void update(){
  x = R * sin(angle);
  y = R * cos(angle);
  angle = angle + speed;
}