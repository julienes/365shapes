int total = 80;
int R = 150;
float angle =PI;
float speed = 0.03;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  rotateZ(angle);
  rotateX(angle);
  globe();
  angle = angle + speed;
}

void globe(){
  for(int i = 0; i < total; i++){
    float lat = map(i, 0, total, 0, TWO_PI);
    for(int j = 0; j < total; j++){
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = (R/2) * (cos(lat) + cos(lon));
      float y = (R/2) * (sin(lat) + sin(lon));
      float z = (R/2) * sin((lat - lon) / 2);
      if(i % 2 == 0 && j % 2 == 0){
        strokeWeight(z/20);
      }else{
        strokeWeight(z/40);
      }
      point(x,y,z);
    }
  }
}