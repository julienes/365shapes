class Money{
  PVector [][] cylindre;
  int total = 50;
  float r = 50;
  PVector pos = new PVector(width/2, height+100);
  PVector vel = new PVector(0,0);
  PVector acc= new PVector(0,random(-15,-10));
  float rotation = 50;
  float speed = PI/10;
  
  Money(){
    cylindre = new PVector[total+1][total+1];
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    if(rotation>0){
    rotation-=speed;
    }else{
      rotation=0;
    }
    println(rotation);
  }
  
  void display(){
    fill(255);
  translate(pos.x, pos.y);
  rotateX(rotation);
  for(int i = 0; i<total+1; i++){
    for(int j = 0; j<total+1; j++){
      float lat = map(j,0, total, 0, TWO_PI);
      float x = r * cos(lat);
      float y = r * sin(lat);
      float z = i*0.2;
      cylindre[i][j] = new PVector(x,y,z);
    }
  }
  for(int i = 0; i<total; i++){
    beginShape(TRIANGLE_STRIP);
    for(int j = 0; j<total+1; j++){
     PVector v = cylindre[i][j];
      vertex(v.x, v.y, v.z);
      PVector v2 = cylindre[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  }
}