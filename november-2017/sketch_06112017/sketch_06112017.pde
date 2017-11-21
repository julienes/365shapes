int total = 50;
int R = 100;
float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(PI/3 + angle);
  for(int i = 0; i < total; i++){
    float lat = map(i, 0, total, 0, TWO_PI);
    for(int j = 0; j <= total; j++){
      float lon = map(j,0, total, 0, TWO_PI);
      float x = R * sin(lat) * cos(lon);
      float y = R * sin(lat) * sin(lon);
      float z = R * cos(lon);
      pushMatrix();
      translate(x,y,z);
      line(0,0, noise(sin(lat)) * 25, noise(cos(lon)) * 25);
      popMatrix();
    }
  }
  angle+=speed;
}