ArrayList<PVector> spots;
Ball[] ball = new Ball[2000];
PImage img;
void setup(){
  size(500,500);
  smooth();
  spots = new ArrayList<PVector>();
  img = loadImage("b.jpg");
  img.loadPixels();
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      int index = x + y * width;
      color c = img.pixels[index];
      float b = brightness(c);
      if(b < 10){
        spots.add(new PVector(x,y));
      }
    }
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
  println(spots.size());
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=ball.length-1; i++){
    ball[i].move();
    ball[i].display();
  }
}

class Ball{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  float x = spot.x;
  float y = spot.y;
  float angle = 0;
  float speed = random(0.5,1);
  
  Ball(){}
  
  
  void move(){
    x = x + sin(angle);
    y = y + cos(angle);
    angle = angle + speed;
  }
  
  void display(){
    stroke(255);
    ellipse(x,y,1,1);
  }
}