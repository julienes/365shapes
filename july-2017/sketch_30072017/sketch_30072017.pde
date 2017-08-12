
float t = 0;
float speed = 0.1;
float R = 100;
float x, y, z;
float k = .0;
float total = 100;
boolean grow = true;


void setup(){
  size(500,500, P3D);
  smooth();
  stroke(6,7,175);
}


void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  for(float i = 0; i <= total; i+=0.2){
  t = i;
  x = R * (k * cos(t) * cos(k*t) + sin(t) * sin(k*t));
  y = R * (k * sin(t) * cos(k*t) - cos(t) * sin(k*t));
  z = R * sqrt(1 - (k * k) * cos(k*t));
  pushMatrix();
  translate(0,0,z);
  ellipse(x,y,5,5);
  popMatrix();
  }
}

void update(){
  if(grow){
    k += 0.0001;
    if(k>=0.02){
      grow = false;
    }
  }
  if(!grow){
    k -= 0.0001;
    if(k<=0){
      grow = true;
    }
  }
}