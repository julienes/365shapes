int R = 100;
float total = 100;
float angle = 0;
float speed = 0.03;
void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(10);
}

void draw(){
  background(6,7,175);
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
   angle = angle + speed;
   rotateZ(angle);
   rotateX(angle);
}