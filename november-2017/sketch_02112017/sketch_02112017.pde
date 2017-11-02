Cake[] cake = new Cake[5];
float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(10);
  for(int i = 0; i < cake.length; i++){
    float hei = map(i, 0, cake.length, 30, 70); 
    cake[i] = new Cake(hei, hei * 2);
  }
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2-150, 0);
  rotateX(PI/4);
  rotateZ(angle);
  
  for(int i = 0; i < 10; i++){
    float m = map(i, 0, 10, 0, TWO_PI);
    float x = 35 * cos(m);
    float y = 35 * sin(m);
    pushMatrix();
    translate(x,y, -100);
    sphere(3);
    popMatrix();
  }
  for(int i = 0; i < cake.length; i++){
    cake[i].display();
  }
  angle = angle + speed;
}