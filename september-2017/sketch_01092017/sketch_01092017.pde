PVector[][] grid;
int total = 10;
PVector acc;


void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
  frameRate(25);
  noFill();
  grid = new PVector[total+1][total+1];
}

void draw(){
  background(6,7,175);
  grid();
  translate(width/2+15, height/2);
  for(int i = 0; i < total-1; i++){
    beginShape(QUAD_STRIP);
    for(int j = 0; j < total; j++){
      PVector v1 = grid[i][j];
      vertex(v1.x, v1.y);
      PVector v2 = grid[i+1][j];
      vertex(v2.x, v2.y);
    }
    endShape();
  }
}


void grid(){
  for(int i = 0; i < total; i++){
    for(int j = 0; j < total; j++){
      float x = map(i, 0, total, -150, 150);
      float y = map(j, 0, total, -150, 150);
      PVector position = new PVector(x,y);
      acc = PVector.random2D();
      acc.mult(10);
      position.add(acc);
      grid[i][j] = new PVector(position.x,position.y);
    }
  }
}