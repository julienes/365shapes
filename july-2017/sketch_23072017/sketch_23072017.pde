ArrayList<Spiral>spiral;
int R = 100;
float angleCourbe = 0.1;
float k = tan(angleCourbe);
float total = 40;
float angle = -total;
float speed = 0.1;
float rotation = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  spiral = new ArrayList<Spiral>();
}

void draw(){
  update();
  rotation+=0.01;
  background(7,7,175);
  translate(width/2, height/2);
  rotateY(PI/4);
  float result = k*angle;
  float result2 = -(k*angle);
  float ch = (exp(result)+exp(result2))/2;
  float sh = (exp(result)-exp(result2))/2;
  float th = (sh/ch);
  float x = R*(cos(angle)/(ch));
  float y = R*(sin(angle)/(ch));
  float z = R*th;
  angle = angle + speed;
  if(angle<=40){
  spiral.add(new Spiral(x,y,z));
  }
  for(int i = spiral.size()-1; i >= 0; i--){
    Spiral s = spiral.get(i);
    s.update();
    s.display();
    if(s.isDead()){
      spiral.remove(i);
    }
  }
  saveFrame("output/gol_####.png");
}

void update() {
  /*if(angle >= total){
    angle = -total;
  }*/
}