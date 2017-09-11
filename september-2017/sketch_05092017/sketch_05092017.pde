float x = 0.01, y = 0, z = 0;
float a = 10;
float b = 28;
float c = 8.0/3.0;
float angle;
int count = 0;
ArrayList<PVector> points = new ArrayList<PVector>();
ArrayList<Scribble> scribble = new ArrayList<Scribble>();


void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(.5);
  noFill();
}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  //rotate(angle);
  scale(4);
  float dt = 0.01;
  float dx = (a * ( y - x)) * dt;
  float dy = (x * ( b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  scribble.add(new Scribble(x,y,z));
  beginShape();
  for(int i = 0; i<=scribble.size()-1; i++){
    Scribble s = scribble.get(i);
    s.display();
    if(s.isDead()){
      scribble.remove(i);
    }
  }
  endShape();
  angle+=0.02;
  count++;
}