float R = 100;
float angle = 0;
float speed = 0.3;

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  strokeWeight(3);
}


void draw(){
  background(6,7,175);
  translate(width/2, height/1.2);
  rotateX(PI/3);
  update();
  for(float i = 0; i<= 50; i+=0.01){
     float R = map(i,0, 50, 0, 100);
     float x = R * sin(i);
     float y = R * cos(i);
     float z = i*6;
     point(x,y,z);
  }
}

void update(){
  angle = angle + speed;
  rotateZ(angle);
}