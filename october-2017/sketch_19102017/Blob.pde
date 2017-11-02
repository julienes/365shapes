class Blob{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  int total = 20;
  float ctr = random(10);
  Blob(float x, float y, float r){
    pos = new PVector(x,y);
    radius = r;
    vel = new PVector(0,0);
  }
  
  void show(){
    translate(pos.x, pos.y);
    for(int i = 0; i < total+1; i++){
      float lat = map(i, 0, total, 0, PI);
      for(int j = 0; j < total+1; j++){
        float lon = map(j, 0, total, 0, TWO_PI);
        float x = sin(lat) * cos(lon);
        float y = sin(lat) * sin(lon);
        float z = cos(lat);
        float noi = noise(x+1, y+1, ctr);
        float d = radius + map(noi, -1,1, -50,50);
        pushMatrix();
        translate(x * d, y * d, z * d);
        sphere(2);
        popMatrix();
      }
    }
    ctr += 0.04;
  }
}