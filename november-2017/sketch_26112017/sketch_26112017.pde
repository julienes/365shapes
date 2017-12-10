ArrayList<Maze>maze;
float x = 100,y = 100;
boolean delete = false;
int spacing = 10;
float x1, y1, x2, y2;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  maze = new ArrayList<Maze>();
}

void draw(){
  background(6,7,175);
  update();
  translate(-15, 0);
  for(int i = 0; i < maze.size(); i++){
    Maze m = maze.get(i);
    m.display();
  }
}

void update(){
  
  if(y < 400){
    x = x + spacing;
    if(random(1) < 0.5) {
      x1 = x;
      y1 = y;
      x2 = x + spacing;
      y2 = y + spacing;
    }else{
      x1 = x;
      y1 = y + spacing;
      x2 = x + spacing;
      y2 = y;   
    }
    
    maze.add(new Maze(x1, y1, x2, y2));
    
    if(x > 400){
      x = 100;
      y = y + spacing;
    }
  }else{
    delete = true;
  }
  
  
  if(delete){
    if(maze.size() == 0){
      delete = false;
      x = 100;
      y = 100;
    }else{
      maze.remove(0);
    }
  }
  
  
}