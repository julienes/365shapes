ArrayList<speedLine>sLine;
float posX, posY, posX2, posY2;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  sLine = new ArrayList<speedLine>();
}

void draw(){
  background(6,7,175);
  createLine();
  for(int i = 0; i < sLine.size(); i++){
    speedLine s = sLine.get(i);
    s.update();
    s.display();
    if(s.isDead()){
      sLine.remove(i);
    }
  }
}

void createLine(){
  if(frameCount % 5 == 0){
    float randomPos = floor(random(0,2));
    if(randomPos == 0){
      posX = random(0,300);
      posY = 0;
    }else{
      posY = random(0,300);
      posX = 0;
   }
   sLine.add(new speedLine(posX, posY));
  }
}