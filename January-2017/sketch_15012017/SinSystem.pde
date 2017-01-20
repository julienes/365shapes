class SinSystem {
  Sin[] s = new Sin[800];
  float ran = random(200,300);
  float ran2 = random(0,1);
  SinSystem(){
    for(int i= 0; i<=s.length-1; i++){
      s[i] = new Sin(i, ran, ran+(i*0.01));
    }
  }
  
  void display(){
    for(int i =0; i<=s.length-1; i++){
      s[i].move();
      s[i].display();
    }
  }
}