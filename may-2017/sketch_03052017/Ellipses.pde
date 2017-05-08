class Ellipses{
  Ellipse[] ellipse = new Ellipse[500];
  float count = 0;
  PVector acceleration;
  Ellipses(){
    for(int i = 0; i<ellipse.length; i++){
      ellipse[i] = new Ellipse(random(0,i), random(0,i));
    }
  }
  
  void display(){
    if(count==0){
    acceleration = PVector.random2D();
    }
    count++;
    if(count>50){
      count=0;
    }
    for(int i = 0; i<ellipse.length; i++){
      ellipse[i].update(acceleration);
      ellipse[i].edges();
      ellipse[i].display();
    }
  }
}