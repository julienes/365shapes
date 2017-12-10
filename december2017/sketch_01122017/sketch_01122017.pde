int size = 10;
int num = 5;
int total = 0;

boolean grow = true;


void setup(){
  size(500,500);
  smooth();
  stroke(255);
}

void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    float x = cos(angle);
    float y = 100 * sin(angle);
    for(int j = 0; j < size ; j+= size/num){
      float x1 = (x + j) * cos(angle);
      float y1 = (y + j) * sin(angle);
      point(x1,y1);
    }
    size+=2;
    num+=2;
  }
  size = 2;
  num = 1;
}

void update(){
  if(grow){
    total++;
    if(total >= 120){
      grow = false;
    }
  }
  if(!grow){
    total--;
    if(total <= 0){
      grow = true;
    }
  }
}