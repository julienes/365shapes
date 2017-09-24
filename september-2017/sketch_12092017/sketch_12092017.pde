float inc = 0.09;
int scl = 5;
int cols, rows;
float[][] terrain;
float angle = 0.7;
float speed = 0.01;
boolean change = false;

void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  fill(255);
  println(PI/4);
  cols = floor(width / scl);
  rows = floor(height / scl);
  terrain = new float[cols][rows];
}

void draw(){
  update();
  lights();
  background(6,7,175);
  float yoff = 0;
  loadPixels();
  for(int y = 0; y < rows; y++){
    float xoff = 0;
    for(int x = 0; x < cols; x++){
      float r = noise(xoff, yoff) * 255;
      xoff += inc;
      float z = map(r, 0, 255, 0,150);
      //fill(r);
      //rect( x * scl, y * scl, scl, scl);
      terrain[x][y] = z;
    }
    yoff += inc;
  }
  translate(width/2, height/2);
  rotateX(PI/3);
  rotateZ(angle);
  scale(0.4);
  for(int y = 0; y<rows-1; y++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x<cols; x++){
      float x1 = map(x, 0, cols, -70,70);
      float y1 = map(y, 0, rows, -70,70);
      vertex(x1*scl, y1*scl, terrain[x][y]);
      vertex(x1*scl, (y1+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}


void update(){
  if(change){
    angle = angle + speed;
    if(angle > 1){
      change = false;
    }
  }
  if(!change){
    angle = angle - speed;
    if(angle < 0.4){
      change = true;
    }
  }
}