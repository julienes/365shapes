class Form{
  PVector position1;
  PVector position2;
  PVector base;
  PVector goal;
  int number;
  float count;
  boolean grow = true;
  Form(PVector _position1, PVector _position2, int nb){
    position1 = new PVector(_position1.x,_position1.y);
    position2 = new PVector(_position2.x,_position2.y);
    base = new PVector(_position2.x,_position2.y);
    number = nb;
  }
  
  void display(){
    if(grow){
      count+=0.5;
      if(count >= number){
      base.lerp(position1,0.1);
      }
      if(count>=110){
        count = 0;
        grow = false;
      }
    }
    if(!grow){
      count+=0.5;
      if(count >= number){
      base.lerp(position2,0.1);
      }
      if(count>=110){
        count = 0;
        grow = true;
      }
    }
    ellipse(base.x, base.y,10,10);
  }
}