ArrayList<Spiral>spiral;
float angle;
float x,y;
float speed = 0.08;
float scalar;
float size;
boolean erase = false;

void setup(){
  size(500,500);
  smooth();
  noStroke();
  spiral = new ArrayList<Spiral>();
}

void draw(){
  int count = spiral.size();
  background(19,65,188);
  translate(width/2, height/2);
  if(scalar>=100 && angle >= TWO_PI){
    erase = true;
  }
  
  if(!erase){
    scalar+=0.1;
    if(angle<=PI){
      size = 1;
    }else{
      size=3;
    }
    if(angle>=TWO_PI){
      angle = 0;
    }
    x = sin(angle)*scalar;
    y = cos(angle)*scalar;
    angle = angle + speed;
    spiral.add(new Spiral(x,y,size));
  }
  
  if(erase){
    count--;
    if(count>=1){
    spiral.remove(count);
    }else{
      erase = false;
      scalar = 0;
      angle = 0;
    }
  }
  
  println(erase);
 
  
  for(Spiral s : spiral){
    s.display();
  }
}