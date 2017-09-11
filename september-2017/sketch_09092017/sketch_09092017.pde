int R = 100;
float total = 150;
float angle = HALF_PI;
float speed = 0.03;
int count = 0;
boolean change = false;
void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(10);
}

void draw(){
  background(6,7,175);
  pattern();
  translate(width/2, height/2);
  update();
  for(float i = 0; i<=total; i+=1){
    float lat = map(i,0,total, 0 , PI);
    for(float j = 0; j<=total; j+=1){
      if(j%2 == 0){
        stroke(255);
      }else{
        stroke(6,7,175);
      }
      float lon = map(j,0,total, 0 , TWO_PI);
      float x = R * cos(lat) * cos(lon);
      float y = R * sin(lat) * cos(lon);
      float z = R * sin(lon);
      point(x,y,z);
    }
  }
}

void update(){
  if(!change){
    angle+=0.02;
    if(angle >= (HALF_PI+0.2)){
      change = true;
    }
  }
  if(change){
    angle-=0.02;
    if(angle <= (HALF_PI-0.2)){
      change = false;
    }
  }
  rotateX(angle);
}

void pattern(){
  for(int y = 100; y<=height-100; y+=5){
    count++;
      if(count%2 == 1){
        stroke(6,7,175);
      }else{
        stroke(255);
      }
      line(100, y, width-100, y);
  }
  count = 0;
}