class Wave{
  int total = 14;
  ArrayList<PVector>sinWave;
  float t = 0;
  int count;
  Wave(){
    sinWave = new ArrayList<PVector>();
    for(int i = 0; i < total; i++){
      t+=0.01;
      float posX = map(i, 0, total, 0, 250);
      float n = noise(t);
      float m = map(n, 0, 1, -100,100);
      float x = posX;
      float y = cos(m)*10;
      sinWave.add(new PVector(x,y));
    }
  }
  
  boolean isDead(){
     if(count > 230){
       return true;
     }else{
       return false;
     }
  }
  
  void display(){
    count++;
     for(int i = 0; i < total; i++){
       PVector s = sinWave.get(i);
       PVector v3 = new PVector(s.x, s.y);
       //ellipse(v3.x, v3.y, 10,10);
       v3.y += 3;
       sinWave.add(new PVector(v3.x,v3.y));
       sinWave.remove(i);
     }
  }
}