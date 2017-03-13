int cols, rows;
int scl = 100;
int w = 400;
int h = 400;
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
  flying -= 0.005;
  float yoff = flying;
  for(int y = 0; y<rows; y++){
    float xoff = flying;
    for(int x = 0; x<cols; x++){
       terrain[x][y] = map(noise(xoff,yoff), 0,1,-200,200);
       xoff += 0.2;
    }
    yoff += 0.2; 
  }
  
  background(5,15,230);
  stroke(255);
  noFill();
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/3, -h/2);
  for(int y = 0; y<rows-1; y++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x<cols; x++){
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}