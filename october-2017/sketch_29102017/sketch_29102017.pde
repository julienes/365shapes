float inc = 0.1;
int scl = 5;
int cols, rows;
float angle2 = 0;
float speed = 0.01;
float zoff = 0;
float t = 500;

PVector[][] terrain;


void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  noFill();
  cols = floor(250/scl);
  rows = floor(250/scl);
  terrain = new PVector[cols+1][rows+1];
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2, -500);
  rotateY(PI/3+angle2);
  float yoff = 0;
  t+=0.1;
  for( int y = -rows/2; y < (rows/2)+1; y++){
    float xoff = 0;
    float lat = map(y, 0, rows, 0, TWO_PI+0.2);
    for(int x = -cols/2; x < (cols/2)+1; x++){
      float lon = map(x, 0, cols, 0, TWO_PI+0.2);
      float r = noise(xoff, yoff) * 255;
      float x1 = 125 * (cos(lat) + cos(lon));
      float y1 = 125 * (sin(lat) + sin(lon));
      float z = r * (sin((lon-lat)/2))*2;
      xoff += inc;
      strokeWeight(r/50);
      point(x1,y1,z);
    }
    yoff += inc;
  }
  angle2 = angle2+speed;
}