Scribble[] scribble = new Scribble[10000];
float x = 0;
float y = 0;
float z = 0;
float angle = 0;
float speed = 0.03;
void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(2);
  stroke(255);
  for(int i = 0; i <= scribble.length-1; i++){
    x = x + random(-3,3);
    y = y + random(-3,3);
    z = z + random(-1,1);
    scribble[i] = new Scribble(x,y,z);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  rotateZ(angle);
  scale(0.8);
  for(int i = 0; i <= scribble.length-1; i++){
    scribble[i].display();
  }
  angle = angle + speed;
}