class Circle{
  float x, y;
  float s;
  float add;
  boolean limit = false;
  Circle(float size, float _add){
     s = size;

     add = _add;
  }
  
  
  void update(){
    x = x + add;
    if(x<=-120 || x>=120){
      limit = true;
      if(limit==true){
        add*=-1;
      }
    }else if(x<=-120 || x>=120 && limit == true){
      limit = false;
      if(limit==false){
        add*=-1;
      }
    }
  }
  void display(){
    ellipse(x, y, s,s);
  }
}