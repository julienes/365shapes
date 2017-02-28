import ddf.minim.analysis.*;
import ddf.minim.*;
Minim       minim;
AudioPlayer jingle;
FFT         fft;

ArrayList<PVector> spots;
Ball[] ball = new Ball[1200];
PImage img;


void setup(){
  size(500,500);
  smooth();
  minim = new Minim(this);
  jingle = minim.loadFile("musique01.mp3");
  jingle.play();
  fft = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  spots = new ArrayList<PVector>();
  img = loadImage("fdlm.jpg");
  img.loadPixels();
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      int index = x + y * width;
      color c = img.pixels[index];
      float b = brightness(c);
      if(b > 10){
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
  fft.forward( jingle.mix );
  background(0);
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
  float angle = random(0,1);
  float speed = random(0.5,1);
  
  Ball(){}
  

  void move(){
    x = spot.x;
    y = spot.y;
    x = x + sin(angle)*fft.getBand(1)*random(1,8);
    y = y + cos(angle)*fft.getBand(1)*random(1,8);
    angle = angle+speed;
  }
  
  void display(){
    fill(255,200);
    noStroke();
    ellipse(x,y,5,5);
  }
}