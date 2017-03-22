float t = 100;
float r = 50;
float rotation = 0;
float speed = 0.02;
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
  noFill();
  background(5,15,230);
  stroke(255);
  translate(width/2, height/2);
  rotateY(rotation);
  rotateX(rotation);
  for(PVector torus : tor){
     beginShape(POINTS);
        vertex(torus.x,torus.y,torus.z);
      endShape();
  }
  rotation = rotation + speed;
}