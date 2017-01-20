class Line {
  PVector depart;
  PVector newPos;
  float x = width/2 + sin(random(10)) * 100;
  float y = height/2 + cos(random(10)) * 100;
  float multiply = random(0,400);
  boolean max = false;
  float lineWeight=(random(0.5,1));
  Line(){
    depart = new PVector(width/2, height/2);
    newPos = new PVector(x,y);
    newPos.sub(depart);
  }
  
  void display(){
    stroke(255);
    strokeWeight(lineWeight);
    line(0, 0, newPos.x, newPos.y);
  }
  
  void move(){
    if(multiply >200){
      max = true;
    }else if(multiply <= 0){
      max = false;
    }
    
    if(max==true){
      multiply-=5;
    }else{
      multiply+=5;
    }
    newPos.normalize();
    newPos.mult(multiply);
    }
  }