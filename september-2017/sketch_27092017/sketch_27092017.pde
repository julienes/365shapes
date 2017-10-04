Lib[] lib = new Lib[10];
float speed = 0.02;
int total = 500;
float angle = 0;


void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(5);
  for(int i = 0; i < lib.length; i++){
    lib[i] = new Lib(random(0, TWO_PI));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  lights();
  for(int i = 0; i < lib.length; i++){
    lib[i].courbe();
    lib[i].display();
  }
  angle = angle + speed;
}