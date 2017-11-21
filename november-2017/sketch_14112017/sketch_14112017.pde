float tweets = 44;
float likes = 37;
float followers = 954;
float days = 324;
int total = int(tweets);
float angle = 0;
float speed = 0.4;

void setup(){
  size(500,500);
  smooth();
  noFill();
  noiseSeed(324);
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotate(angle);
  for(int i = 0; i < 20; i++){
    blob(i);
  }
  angle+=speed;
}

void blob(int r){
  beginShape();
      for(int i = 0 ; i <= tweets; i++){
        float angle = map(i,0,tweets, 0, TWO_PI);
        float x = cos(angle);
        float y = sin(angle);
        float n = noise(x * likes,y * followers);
        float l = map(n, -1,1,0,4);
        if(i%2 == 0){
          strokeWeight(3);
        }else{
          strokeWeight(1);
        }
        vertex(x * l * r * 3, y * l * r * 3);
      }
   endShape();
}