ArrayList<Sinu>sinu;
int a = 150;
int n = 20;
float angle = 0;
float speed = 0.05;
float k = 10;


void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(5);
  noFill();
  sinu = new ArrayList<Sinu>();
}

void draw(){
  background(6,7,175);
  angle = angle + speed;
  translate(width/2, height/2);
  float x = a * ((cos(angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
  float y = a * ((sin(angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
  float z = a * ((k*cos(n*angle))/(sqrt(1+(k*k)*(cos(n*angle))*cos(n*angle))));
  sinu.add(new Sinu(x,y,z));
  beginShape();
  for(int i = sinu.size()-1; i >= 0; i--){
    Sinu s = sinu.get(i);
    s.display();
    if(s.isDead()){
        sinu.remove(i);
    }
  }
  endShape();
}