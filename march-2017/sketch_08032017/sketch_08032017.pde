ArrayList<PVector> grid;
ArrayList<Ball> ball;

void setup(){
  size(500,500);
  smooth();
  frameRate(10);
  ball = new ArrayList<Ball>();
  grid = new ArrayList<PVector>();
  for(int i = 100; i<400; i+=10){
    for(int j = 100; j<400; j+=10){
      grid.add(new PVector(i,j));
    }
  }
  for(int i = 0; i<grid.size(); i++){
    float r = random(0,1);
    PVector g = grid.get(i);
    if(r>0.4){
      ball.add(new Ball(g.x, g.y));
    }
  }
}

void draw(){
  background(5,15,230);
  noStroke();
  for(Ball b : ball){
    b.move();
    b.display();
  }
}