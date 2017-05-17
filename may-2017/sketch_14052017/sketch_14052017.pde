ArrayList<Grid> grid;
Ball[] ball = new Ball[20];
void setup(){
  size(500,500);
  smooth();
  stroke(255);
  grid = new ArrayList<Grid>();
  for(int x = 0; x<=250; x+=30){
    for(int y = 0; y<=250; y+=30){
      grid.add(new Grid(x,y));
    }
  }
  for(int i = 0; i<ball.length; i++){
    ball[i] = new Ball();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2-125, height/2-125);
  
  for(int i = 0; i<ball.length; i++){
    ball[i].display();
    ball[i].edges();
    ball[i].update();
  }
  
  for(int j = 0; j<grid.size(); j++){
    Grid g = grid.get(j);
    g.display();
    PVector v1 = g.position;
    for(int i = 0; i<ball.length; i++){
      PVector v2 = ball[i].position;
      float d = v1.dist(v2);
      if(d<30){
        line(v1.x, v1.y, v2.x, v2.y);
      }
    }
  }
}