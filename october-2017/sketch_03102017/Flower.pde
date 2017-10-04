class Flower{
  float n1 = .3, n2 = .3, n3 = .3, m = 1, a = 1, b = 1;
  float total = 100;
  float increment = TWO_PI / total;
  int R;
  float angle;
  Flower(int _rayon, float _angle){
   R = _rayon * 5;
   angle = _angle;
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
    rotate(angle);
    beginShape();
    for(float angle = 0; angle < TWO_PI; angle+=increment){
      float r = supershape(angle);
      float x = R * r * cos(angle);
      float y = R * r * sin(angle);
      vertex(x,y);
    }
    endShape();
  }
}