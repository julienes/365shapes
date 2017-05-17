ArrayList<Circle>circles;
void setup(){
  size(500,500);
  smooth();
  circles = new ArrayList<Circle>();
}


void draw(){
  translate(50,45);
  background(6,7,175);
  int count = 0;
  int total = 50;
  while(count < total){
    Circle newC = newCircle();
    if(newC !=null){
      circles.add(newC);
      count++;
    }
  }
  
  for(Circle c : circles){
    if(c.growing){
      if(c.edges()){
        c.growing = false;
      }else{
        for(Circle other : circles){
          if(c != other){
            float d = dist(c.x, c.y, other.x, other.y);
            if(c.x+c.r1/2 >= other.x-other.r1/2 && c.x-c.r1/2 <= other.x+other.r1/2 && c.y+c.r2/2 >= other.y-other.r2/2 && c.y-c.r2/2 <= other.y+other.r2/2){
              c.growing = false;
              break;
            }
          }
        }
      }
    }
      c.show();
      c.grow();
  }
}

Circle newCircle(){
  float x = random(width);
  float y = random(height);
  
  boolean valid = true;
  for(Circle c : circles){
    float d = dist(x,y,c.x,c.y);
    float diag = sqrt((c.r1*c.r1)+(c.r2*c.r2));
    if(d<diag/2){
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