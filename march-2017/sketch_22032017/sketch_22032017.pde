float t = 100;
float r = 10;
float rotation = 0;
float speed;
boolean accelerate = true;
ArrayList<PVector>tor;
void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(2);
  tor = new ArrayList<PVector>();
  for(float i = 0; i<TWO_PI; i+=0.09){
    for(float j = 0; j<TWO_PI; j+=0.09){
      float x = (t + r * cos(j))*cos(i);
      float y = (t + r * cos(j))*sin(i);
      float z = r * sin(j);
      tor.add(new PVector(x,y,z));
    }
  }
}

void draw(){
  lights();
  background(6,7,175);
  noStroke();
  fill(255);
  translate(width/2, height/2);
  sphere(50);
  noFill();
  stroke(255);
  rotateX(rotation);
  for(PVector torus : tor){
     beginShape(POINTS);
        vertex(torus.x,torus.y,torus.z);
      endShape();
  }
  rotation = rotation + speed;
}