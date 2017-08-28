class Square{
  int count, count1;
  PVector position;
  float alpha = 255;
  PVector base = new PVector(0,0);
  PVector acceleration = new PVector(-1, random(-1,1));
  Square(float x, float y, int _count){
    position = new PVector(x,y);
    count = _count;
  }
  
  void update(){
    count1+=5;
    if(count1 >= count){
      alpha-=10;
      base.add(acceleration);
      position.add(base);
    }
  }
  
  void display(){
    fill(255,alpha);
    rect(position.x,position.y,5,5);
  }
}