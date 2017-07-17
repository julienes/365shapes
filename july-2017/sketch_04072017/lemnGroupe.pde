class lemnGroupe {
  ArrayList<Lemniscate> lemn;
  float x,y;
  float t;
  float speed = 0.03;
  float a;
  float count;
  
  lemnGroupe(float _a, float _count){
    a = _a;
    count = _count;
    lemn = new ArrayList<Lemniscate>();
  }
  
  void starte(){
    if(count>=200){
      update();
      count = 200;
    }else{
      count++;
    }
  }
  
  void update(){
    t = t + speed;
    x = a * (sin(t)/(1+cos(t)*cos(t)));
    y = a * (sin(t)*cos(t)/(1+cos(t)*cos(t)));
  }
  
  void display(){
    lemn.add(new Lemniscate(x,y));
    for(int i = lemn.size()-1; i>=0; i--){
      Lemniscate l = lemn.get(i);
      l.display();
      if(l.isDead()){
        lemn.remove(i);
      }
    }
  }
}