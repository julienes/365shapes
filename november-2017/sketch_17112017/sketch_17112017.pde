int cols, rows;
int scl = 20;
int w = 400;
int h = 400;
float[][] terrain;
int y1, x1;


void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  cols = w/scl;
  rows = h/scl;
  terrain = new float[cols][rows];
  for(int y = 0; y<rows; y++){
    for(int x = 0; x<cols; x++){
      float d = dist(x,y,0,0);
      terrain[x][y] =noise(x,y)*d*3;
    }
  }
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2-100, -180);
  scale(0.8);
  rotateX(PI/3);
  rotateZ(PI/4);
  for(int y = 0; y<rows-1; y++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x<cols; x++){
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
  
  pushMatrix();
  if(frameCount%2 == 0){
    y1++;
    if(y1 >rows-1){
      x1++;
      y1 = 0;
    }
    if(x1>=cols){
      x1 = 0;
      y1 = 0;
    }
  }
  translate(x1*scl, y1*scl, terrain[x1][y1]+10);
  sphere(20);
  popMatrix();
}