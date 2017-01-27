int constant = 250;
float angle = 0;
boolean increase = true;
float size =10;
float m = 50;
void setup(){
size(500,500);
smooth();
background(6,7,175);

}

void draw(){

}

void mousePressed(){
  background(6,7,175);
  noStroke();
  float speed = random(5, 10);
  for(int i = 0; i<3000; i++){
  update();
  float x = constant + sin(angle) * m;
  float y = constant + cos(angle) * m;
  ellipse(x,y,2,2);
  angle = angle + speed;
}
}

void update(){
  float add = 0.5;
    if(m>=100){
      increase = false;
    }else if(m<=50){
     increase =true;
    }
    
    if(increase){
      m+=add;
    }else{
      m-=add;
    }
}