ArrayList<Rond>rond;

int time= 0;
float beginning= 0;
float change = .1;
float duration = 300;
float x = 0;
float y = 250;
float angle;
float R;
float t = 0;
boolean restart = false;
int count;

void setup(){
  size(500, 500);
  smooth();
  rond = new ArrayList<Rond>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  x = R * cos(angle);
  y = R * sin(angle);
  angle = angle + easeInOut(time, beginning, change, duration);
  update();
  rond.add(new Rond(x,y, easeOut(time, beginning, change, duration)));
  for(int i = rond.size()-1; i >= 0; i--){
    Rond r = rond.get(i);
    r.update();
    r.display();
    if(r.isDead()){
      rond.remove(i);
    }
  }
  t+=0.1;
  float n = noise(t);
  R = map(n,0,1,80,200);
}

void update(){
  if(!restart){
    time++;
    count = 0;
    if (time >= duration){
      restart = true;
    }
  }
  if(restart){
    time = 0;
    count++;
    if(count > 100){
      restart = false;
    }
  }
}


float  easeIn(float t,float b , float c, float d) {
    return -c * (float)Math.cos(t/d * (Math.PI/2)) + c + b;
  }
  
float  easeOut(float t,float b , float c, float d) {
    return c * (float)Math.sin(t/d * (Math.PI/2)) + b;  
  }
  
float  easeInOut(float t,float b , float c, float d) {
    return -c/2 * ((float)Math.cos(Math.PI*t/d) - 1) + b;
  }