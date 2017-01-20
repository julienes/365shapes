class Circle{
  float size;
  float angle = random(0, TWO_PI);
  boolean completeCircle = false;
  float acceleration = random(0.01, 0.05);
  Circle(float newSize){
    size = newSize;
  }
  void move(){
    if(angle>=TWO_PI){
     completeCircle = true;
    }
    if(angle<=0){
     completeCircle = false;
    }
     
    if(completeCircle == true){
     angle-=0.05 + acceleration;
    }else{
     angle+=0.05 + acceleration;
    }
  }
  
  void display(){
    arc(width/2, height/2, size, size, 0, angle);
  }

}