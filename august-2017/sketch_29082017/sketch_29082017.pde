ArrayList<Cutter>cutter;
float angle = 0;
float speed = 0.06;
float x,y;
float theta = 0;
int total = 100;
float[] posx = new float[total];
float[] posy = new float[total];
int count = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  cutter = new ArrayList<Cutter>();
  for(int i = 0; i < total; i++){
    float theta = map(i, 0, total, 0, TWO_PI+0.3);
    x = 100 * cos(theta);
    y = 100 * sin(theta);
    posx[i] = x;
    posy[i] = y;
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  cut();
  for(int i = cutter.size()-1; i > 0 ; i--){
    Cutter c = cutter.get(i);
    c.display();
    if(c.isDead()){
      cutter.remove(i);
    }
  }
}


void cut(){
   count++;
   if(count>1 && count < total){
     if(count%2 == 0){
        float x1 = posx[count-1];
        float y1 = posy[count-1];
        float x2 = posx[count];
        float y2 = posy[count];
        cutter.add(new Cutter(x1,y1,x2,y2));
     }
   }
   if(count >= total){
     count = 0;
   }
}