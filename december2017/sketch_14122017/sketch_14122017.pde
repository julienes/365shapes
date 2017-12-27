float[] posX;
float[] posY;

int total = 10;

boolean grow = true;

int R = 150;

int mult = 2;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  
}

void draw(){
  posX = new float[total+1];
  posY = new float[total+1];
  update();
  for(int i = 0; i < total; i++){
    float angle = map(i,0,total, 0, TWO_PI);
    float x = R * cos(angle);
    float y = R * sin(angle);
    
    posX[i] = x;
    posY[i] = y;
  }
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    int num2 = (mult*i)%total;
    point(posX[i], posY[i]);
    line(posX[i], posY[i], posX[num2], posY[num2]);
  }
}


void update(){
  if(grow){
    total++;
    if(frameCount % 40 == 0){
      mult++;
    }
    
    if(mult > 4){
      grow = false;
    }
  }
  
  if(!grow){
    total--;
    if(frameCount % 40 == 0){
      mult--;
    }
    
    if(mult <= 2){
      grow = true;
    }
  }
  
  println(mult);
}