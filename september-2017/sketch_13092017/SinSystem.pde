class SinSystem {
  Sin[] s = new Sin[400];
  float ran = random(200,300);
  float ran2 = random(0,1);
  SinSystem(){
    for(int i= 100; i<=s.length-1; i+=2){
      s[i] = new Sin(i, ran, ran+(i*0.1));
    }
  }
  
  void display(){
    for(int i = 100; i<=s.length-1; i+=2){
      s[i].move();
      s[i].display();
    }
  }
}