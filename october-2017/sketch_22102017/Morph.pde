class Morph{
  float n1 = 0.2, n2 = 1.7, n3 = 1.7, m = 5, a = 1, b = 1;
  float total = 80;
  float increment = TWO_PI / total;
  int R;
  float angle2;
  int count;
  boolean change = true;
  Morph(int _rayon, float _angle, int _count){
   R = _rayon;
   angle2 = _angle;
   count = _count;
  }
  
  float supershape(float theta){
    
    float part1 = (1 / a) * cos(theta * m / 4);
    part1 = abs(part1);
    part1 = pow(part1, n2);
    
    float part2 = (1 / b) * sin(theta * m / 4);
    part2 = abs(part2);
    part2 = pow(part2, n3);
    
    float part3 = pow(part1 + part2, 1/n1);
    
    if(part3 == 0){
      return 0;
    }
    
    return (1/part3);
  }
  
  void display(){
    update();
    rotate(angle2);
    beginShape();
    for(float angle = 0; angle < TWO_PI+0.1; angle+=increment){
      float r = supershape(angle);
      float x = R * r * cos(angle);
      float y = R * r * sin(angle);
      vertex(x,y);
    }
    endShape();
    angle2+=(count/40);
  }
  
  void update(){
    if(count % 2 == 1){
      stroke(6,7,175);
    }else{
      stroke(255);
    }
    if(change){
      n1+=0.008;
      if(n1 > 0.8){
        change = false;
      }
    }
    if(!change){
      n1-=0.008;
      if(n1 < 0.5){
        change = true;
      }
    }
  }
}