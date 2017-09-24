Repulse repulse;
ArrayList<Ball>ball;
PImage img;
void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(3);
  repulse = new Repulse();
  ball = new ArrayList<Ball>();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateX(PI/3);
  rotateZ(PI/3);
  repulse.display();
  //repulse.update();
  for(int i = ball.size()-1; i>=0; i--){
    Ball b = ball.get(i);
    b.behaviors();
    b.update();
    b.show();
    if(b.isDead()){
      ball.remove(i);
    }
  }
  for(int i = 0; i<=10; i++){
    ball.add(new Ball());
  }

}