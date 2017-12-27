PVector[][] globe;
float[] angle = new float[56];
float r = 120;
float rot = 0;
int total = 7;
int num = 0;
int Y_AXIS = 1;
int X_AXIS = 2;
color c1, c2;
float flying = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  c1 = color(0,157,203);
  c2 = color(0,94,132);
  stroke(255);
  noFill();
  rectMode(CENTER);
  globe = new PVector[total+1][total+1];
  for(int i = 0; i<=angle.length-1; i++){
    float turn = random(-QUARTER_PI,QUARTER_PI);
    angle[i] = turn;
  }
  
}

void draw(){
  flying -= 0.005;
  float yoff = flying;
  for(int i = 0; i< total+1; i++){
    float xoff = flying;
    float lon = map(i, 0, total, 0, TWO_PI);
     for(int j = 0; j< total+1; j++){
       float lat = map(j, 0, total, 0, TWO_PI);
       float x = (r/2)*(cos(lon)+cos(lat));
       float y = (r/2)*(sin(lon)+sin(lat));
       float z = r*sin((lon-lat)/2);
       float n = map(noise(xoff,yoff), 0,1,-10,10);
        globe[i][j] = new PVector(x+n, y+n, z+n);
        xoff += 0.05;
     }
     yoff += 0.5; 
  }
  rot+=0.01;
  lights();
  translate(width/2, height/2);
  //rotateY(rot);
  //rotateX(rot);
  background(6,7,175);
  //fill(255);
  //lights();
  noFill();
  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j++) {
      strokeWeight(1);
      PVector v1 = globe[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  fill(255);
  for (int i = 0; i < total; i++) {
    for (int j = 0; j < total+1; j++) {
      if(num>=56){
        num = 56;
      }else{
        num++;
      }
      PVector v1 = globe[i][j];
      pushMatrix();
      rotateZ(angle[num-1]);
      translate(v1.x, v1.y, v1.z);
      if(num%2 == 1){
        rect(0,0,10,10,2);
      }else{
        rect(0,0,20,20,5);
      }
      popMatrix();
    }
  }
}