ArrayList<Circle> circle;
int max = 120;

void setup(){
  size(500,500);
  smooth();
  circle = new ArrayList<Circle>();
}

void draw(){
  background(19,65,188);
  translate(width/2, height/2);
  int total = 10;
  int count = 0;
  int attempts = 0;
  
  while (count < total){
    Circle newC = newCircle();
    if(newC != null){
      circle.add(newC);
      count++;
    }
    attempts++;
    if(attempts >120){
      noLoop();
      break;
    }
  }
  
  for(Circle c : circle){
    if(c.growing){
      if(c.edges()){
        c.growing = false;
      }else{
        for(Circle other : circle){
          if(c != other){
          float d = dist(c.position.x, c.position.y, other.position.x, other.position.y);
            if(d+2 < c.r + other.r){
              c.growing = false;
              break;
            }
          }
        }
      }
    }
    c.grow();
    c.show();
  }
}

Circle newCircle(){
  
  float x = random(-max,max);
  float y = random(-max,max);
  boolean valid = true;
  for(Circle c : circle){
    float d = dist(x,y,c.position.x,c.position.y);
    if(d<c.r){
      valid = false;
      break;
    }
  }
  if(valid){
    return new Circle(x,y);
  }else{
    return null;
  }
}