ArrayList<Pyramid>pyramid;
float s = 100;
float aug = 0;
float r;
int j = 3;
float rotation = 0;
boolean change = false;
void setup(){
  size(500,500,P3D);
  smooth();
  pyramid = new ArrayList<Pyramid>();
  for(int i = 0; i<=100; i+=10){
    s = 100 - i;
    aug = 0+i;
    pyramid.add(new Pyramid(s,s,aug));
  }
}

void draw(){
  background(19,65,188);
  noStroke();
  lights();
  translate(width/2, height/2);
  rotateX(PI/3);
  rotateZ(QUARTER_PI);
  for(Pyramid p : pyramid){
    p.display();
    p.update(rotation);
  }
  if(!change){
  rotation+=0.003;
    if(rotation>=0.15){
      change = true;
    }
  }
  if(change){
  rotation-=0.003;
    if(rotation<0){
      change = false;
    }
  }
}