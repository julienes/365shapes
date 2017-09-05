ArrayList<Stone>stone;
boolean isTurn = true;
float angle = PI/6;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  stone = new ArrayList<Stone>();
  for(int x = -150; x <= 150; x+=40){
    for(int y = -150; y <= 150; y+=40){
      float size = random(30,80);
      stone.add(new Stone(x,y, size));
    }
  }
}

void draw(){
  background(6,7,175);
  translate(width/2+25, height/2);
  directionalLight(255, 255, 255, -1, -10, -10);
  rotateX(PI/3);
  turn();
  for( Stone s : stone){
    s.display();
  }
}

void turn(){
  rotateZ(angle);
  if(isTurn){
    angle+=0.001;
    if(angle >= PI/6 + 0.1){
      isTurn = false;
    }
  }
  if(!isTurn){
    angle-=0.001;
    if(angle <= PI/6){
      isTurn = true;
    }
  }
}