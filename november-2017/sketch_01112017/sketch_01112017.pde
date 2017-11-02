Milky[] milky = new Milky[6];
int total = 180;
int R = 100;
PVector[] branch;
float r = 0;
float speed = 0.02;


void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
  branch = new PVector[total];
  for(int i = 0; i < total; i++){
    R = i;
    float theta = map(i, 0, total, 0, TWO_PI);
    float x = R * cos(theta) + random(-8.5, 8.5);
    float y = R * sin(theta) + random(-8.5, 8.5);
    branch[i] = new PVector(x,y);
  }
  
  for(int i = 0; i < milky.length; i++){
    milky[i] = new Milky();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(PI/3);
  rotateZ(r);
  sphere(5);
  for(int i = 0; i < milky.length; i++){
    float angle = map(i, 0, milky.length, 0, TWO_PI);
    pushMatrix();
    rotate(angle);
    milky[i].display();
    popMatrix();
  }
  
  r = r + speed;
}