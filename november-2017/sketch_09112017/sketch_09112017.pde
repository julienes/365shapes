ArrayList<Tore>tore;

int total = 800;
int R = 80; int r = 60;
int num = 0;
float n = 5;
float size = 0.1;
boolean grow = true;
float angle = 0;
float speed = 0.02;

void setup(){
  size(500, 500, P3D);
  smooth();
  tore = new ArrayList<Tore>();
}

void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  rotateX(PI/3);
  rotateY(PI/3);
  float x = (R + r * cos(n*angle))*cos(angle);
  float y = (R + r * cos(n*angle))*sin(angle);
  float z = r * sin(n*angle);
  if(size>0){
    tore.add(new Tore(x,y,z, size));
  }
  for(int i = 0; i <= tore.size()-1; i++){
    Tore t = tore.get(i);
    t.display();
    if(t.isDead()){
      tore.remove(i);
    }
  }
  
  angle+=speed;
}

void update(){
   if(grow){
     size+=0.05;
     if(size>= 20){
       grow = false;
     }
   }
   if(!grow){
     size-=0.1;
     if(size<= 0){
       size = 0;
     }
   }
}