int total = 8;
float rand;
float n;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(3);
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    pushMatrix();
    rotate(angle);
    branch();
    popMatrix();
  }
}


void branch(){
  line(0,0,0,-150);
  for(int i = 0; i < 100; i+=20){
    if(frameCount%20 == 0){
    rand = noise(random(10,60));
    n = map(rand,-1,1,10,50);
    }
    float r = n;
    pushMatrix();
    translate(0,-i);
    line(0,0,r,-r);
    line(0,0,-r,-r);
    popMatrix();
  }
}