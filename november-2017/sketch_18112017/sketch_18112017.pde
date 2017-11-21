float s = 200;
boolean grow = false;

void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(6,7,175);
  state();
  for(int x = 100; x < width-100; x+=10){
    for(int y = 100; y < height-100; y+=10){
      float d = dist(250,250,x,y);
      if(d > s){
        ellipse(x,y,10,10);
      }else{
        ellipse(x,y,5,5);
      }
    }
  }
}

void state(){
  if(grow){
    s+=0.5;
    if(s >= 200){
      grow = false;
    }
  }
  if(!grow){
    s-=0.5;
    if(s <= 10){
      grow = true;
    }
  }
}