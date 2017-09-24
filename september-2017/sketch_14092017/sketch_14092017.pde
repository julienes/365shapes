float angle = PI/4;
float speed = 0;
float ease = 0.001;
boolean decelerate = false;
float size = 1;

void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  croix();
  saveFrame("output/gol_####.png");
}

void croix(){
   ease();
   scale(size);
   rotate(angle);
   translate(-25, -25);
   beginShape();
   rect(-30,-30,50,50);
   rect(30,-30, 50,50);
   rect(-30,30, 50,50);
   rect(30,30, 50,50);
   endShape();
}

void ease(){
  if(!decelerate){
    speed = speed + ease;
    angle = angle + speed;
    size = size + (ease * 2);
    if(speed >.5){
      decelerate = true;
    }
  }else if(decelerate){
    speed = speed - ease;
    angle = angle + speed;
    size = size - (ease * 2);
    if(speed <=0){
      decelerate = false;
    }
  }
  println(decelerate);
}