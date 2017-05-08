class Circle{
  float x,y;
  float angle;
  float speed;
  float scalar;
  float count;
  boolean grow;
  float taille = random(10,15);
  Circle(float _angle){
    angle = _angle;
  }
  
  void display(float size){
    count+=0.1;
    if(count>=size){
      if(grow){
        scalar+=1;
        if(scalar>=150){
          grow = false;
        }
      }
      if(!grow){
         scalar-=1;
         if(scalar<=0){
          grow = true;
        }
      }
    }
    x = sin(angle)*scalar;
    y = cos(angle)*scalar;
    ellipse(x,y,scalar/10,scalar/10);
  }
}