class Blob{
  float[] posX;
  float[] posY;
  int[] r;
  int var01 = 454;
  int var02 = 264;
  int var03 = 370;
  int var04 = 40;
  int scalar = 50;
  int total = 800;
  int R = 1;
  float t = 0;
  
  Blob(){
    posX = new float[total+1];
    posY = new float[total+1];
    r = new int[total+1];
    for(int i = 0; i <= total; i++){
      int num = floor(random(0, total));
      r[i] = num;
    }
  }
  
  void display(){
     for(int i = 0; i <= total; i++){
       float angle = map(i, 0, total, 0, TWO_PI);
      float x = cos(angle);
      float y = sin(angle);
      float n = noise(x + var03 + t, y + var04 + t);
      float l = map(n, -1, 1,0, 4);
      posX[i] = x * l * R * scalar;
      posY[i] = y * l * R * scalar;
      line(posX[i], posY[i], posX[r[i]], posY[r[i]]);
     }
     t+=0.01;
  }
}