class Supershape{
  float n1 = 1, n2 = 4, n3 = 2, m = 0, a = 1, b = 1;
  float total = 200;
  float increment = TWO_PI / total;
  boolean grow = true;
  float x,y;
  int count;
  Supershape(float _x, float _y, int _count){
    x = _x;
    y = _y;
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
  
  void update(){
    if(grow){
      m+=0.03;
      if(m >= 5){
        grow = false;
      }
    }
    if(!grow){
      m-=0.03;
      if(m <= 0){
        grow = true;
      }
    }
  
  }
  
  void display(){
    if(count%2 == 1){
      fill(255);
    }else{
      fill(6,7,175);
    }
    beginShape();
    for(float angle = 0; angle < TWO_PI; angle+=increment){
      float r = supershape(angle);
      float x1 = x + (40 * r * cos(angle));
      float y1 = y + (40 * r * sin(angle));
      vertex(x1,y1);
    }
    endShape();
  }
}