ArrayList<Grid> grid;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  rectMode(CENTER);
  grid = new ArrayList<Grid>();
  for(int x = 0; x<=300; x+=20){
    for(int y = 0; y<=300; y+=20){
      int number = floor(random(0,50));
      grid.add(new Grid(x,y, number));
    }
  }
}

void draw(){
  background(6,7,175);
  rotateY(PI/8);
  fill(255);
  pushMatrix();
  translate(width/2, height/2,-10);
  rect(0,0,300,300);
  popMatrix();
  fill(6,7,175);
  pushMatrix();
  translate(width/2-150, height/2-150);
  for(Grid g : grid){
    g.update();
    g.display();
  }
  popMatrix();
}