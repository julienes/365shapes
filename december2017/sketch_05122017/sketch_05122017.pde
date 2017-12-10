float total = 300;
float t = 0;
float t2 = 0;
float count = 0;
float count2 = 0;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(2);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  sun();
  circle();
}

void sun(){
  count+=0.01;
  for(int i = 0; i <= total; i++){
    t = i + count;
    float angle = map(i, 0, total, 0, TWO_PI);
    float n = noise(t);
    float scalar = map(n, 0,1, 10, 100);
    float x1 = 100 * cos(angle);
    float y1 = 100 * sin(angle);
    float x2 = (100 + scalar) * cos(angle);
    float y2 = (100 + scalar) * sin(angle);
    float x3 = (200 - scalar) * cos(angle);
    float y3 = (200 - scalar) * sin(angle);
    line(x1,y1,x2,y2);
    point(x3,y3);
    
  }
}

void circle(){
  count+=0.001;
  for(int i = 0; i <= total; i++){
    t = i + count;
    float n = noise(t);
    float scalar = map(n, 0,1, 10, 40);
    float angle = map(i, 0, total, 0, TWO_PI);
    float x1 = (60+scalar) * cos(angle);
    float y1 = (60+scalar) * sin(angle);
    point(x1, y1);
  }
}
  