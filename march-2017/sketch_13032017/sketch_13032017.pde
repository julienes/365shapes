int cols, rows;
int scl = 20;
int w = 200;
int h = 200;
float[][] terrain;
float flying = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  cols = w/scl;
  rows = h/scl;
  terrain = new float[cols][rows];
}

void draw(){
  lights();
  flying -= 0.05;
  float yoff = flying;
  for(int y = 0; y<rows; y++){
    float xoff = flying;
    for(int x = 0; x<cols; x++){
       terrain[x][y] = map(noise(xoff,yoff), 0,1,0,400);
       xoff += 0.2;
    }
    yoff += 0.2; 
  }
  
  background(5,15,230);
  stroke(255);
  fill(255);
  translate((width/2)+10, (height/2)-10);
  rotateX(PI);
  translate(-w/2, -h/2);
  for(int y = 0; y<rows-1; y++){
    for(int x = 0; x<cols; x++){
      pushMatrix();
        translate(x*scl, y*scl);
        box(10, 10, terrain[x][y]);
      popMatrix();
    }
  }
}