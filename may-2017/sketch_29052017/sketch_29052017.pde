Stick[] stick = new Stick[100];
Stick[] stick2 = new Stick[50];

void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(2);
  stroke(255);
  for(int i = 0; i<=stick.length-1; i++){
     float u = map(i, 0,stick.length, 0,TWO_PI);
     float x = sin(u)*100;
     float y = cos(u)*100;
     stick[i] = new Stick(x,y,0.01,100);
  }
  for(int i = 0; i<=stick2.length-1; i++){
     float u = map(i, 0,stick2.length, 0,TWO_PI);
     float x = sin(u)*50;
     float y = cos(u)*50;
     stick2[i] = new Stick(x,y,0.1,200);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(PI/3);
  for(int i = 0; i<=stick.length-1; i++){
    stick[i].display();
  }
  for(int i = 0; i<=stick2.length-1; i++){
    stick2[i].display();
  }
}