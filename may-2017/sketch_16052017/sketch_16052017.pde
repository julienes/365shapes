import peasy.*;
PeasyCam cam;
int cols, rows, prof;
int scl = 20;
int w = 150;
int h = 150;
int z = 200;
float[][][] terrain;
float flying = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  cam = new PeasyCam(this, z);
  cols = w/scl;
  rows = h/scl;
  prof = z;
  terrain = new float[prof][cols][rows];
}

void draw(){
  flying -= 0.005;
  float yoff = flying;
  for(int z = 0; z<prof; z+=100){
    float zoff = flying;
  for(int y = 0; y<rows; y++){
    float xoff = flying;
    for(int x = 0; x<cols; x++){
       terrain[z][x][y] = map(noise(xoff,yoff,zoff), 0,1,-100,100);
       zoff += 0.2;
    }
     xoff += 0.2;
  }
  yoff += 0.2;
  }
  background(6,7,175);
  stroke(255);
  noFill();
  translate(-w/2, -h/2);
  beginShape(TRIANGLE_STRIP);
  for(int z = 0; z<prof-1; z+=100){
    for(int y = 0; y<rows-1; y++){
      for(int x = 0; x<cols; x++){
        vertex(x*scl, y*scl, terrain[z][x][y]);
        vertex(x*scl, (y+1)*scl, terrain[z][x][y+1]);
      }
    }
  }
  endShape();
}