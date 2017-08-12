int a = 120;
int b = 60;
int c = 60;
int total = 100;
float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  rotateZ(angle);
  for(int i = 0; i <= total; i++){
    float u = map(i, 0, total, 0, PI);
    for(int j = 0; j <= total; j++){
      float v = map(j, 0, total, 0, TWO_PI);
      float x = ((c*c)/a)*((cos(u)*cos(v))/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      float y = ((c*c)/b)*((sin(u)*cos(v))/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      float z = c*(sin(v)/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      point(x,y,z);
    }  
  }
  angle = angle + speed;
}