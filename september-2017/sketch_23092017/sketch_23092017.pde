int R = 100;
int total = 250;
float angle = 0;
float speed = 0.03;
int count = 0;
float n = 0;
float s = 1;
PVector[] clelie;
boolean grow = true;
void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  noFill();
  clelie = new PVector[total+1];
}

void draw(){
  increase();
  strokeWeight(s);
  background(6,7,175);
  translate(width/2, height/2);
  //update();
    for(int j = 0; j<total; j+=1){
        count++;
        float lon = map(j,0,total, 0 , TWO_PI);
        float x = R * cos(n*lon) * cos(lon);
        float y = R * sin(n*lon) * cos(lon);
        float z = R * sin(n*lon);
        clelie[j] = new PVector(x, y, z);
    }
    beginShape();
    for(int j = 0; j<total; j+=1){
      PVector v1 = clelie[j];
      vertex(v1.x,v1.y,v1.z);
    }
    endShape();
}

void update(){
   angle = angle + speed;
   rotateZ(angle);
}

void increase(){
  if(grow){
    n+=0.01;
    s+=0.01;
    if(n >= 4.1){
      grow = false;
    }
  }
  if(!grow){
    n-=0.01;
    s-=0.01;
    if(n <= 0){
      grow = true;
    }
  }
}