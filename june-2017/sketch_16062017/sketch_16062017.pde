ArrayList<Sphera>sphera;

float x,y,z;
int R = 120;
float t = 0;
int n = 8;

void setup(){
  size(500,500, P3D);
  smooth();
  sphera = new ArrayList<Sphera>();
}

void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  fill(6,7,175);
  sphere(50);
  for(int i = sphera.size()-1; i>=0; i--){
    Sphera s = sphera.get(i);
    s.display();
  }
}

void update(){
  t+= 0.01;
  x = R * cos(n*t)*cos(t);
  y = R*cos(n*t) *sin(t);
  z = R*sin(n*t);
  sphera.add(new Sphera(x,y,z));
}