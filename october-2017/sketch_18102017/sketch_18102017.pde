ArrayList<Ceva>ceva;
PVector[] points;
int total = 400;
int a = 50;
int count = 0;
int count2 = total;

void setup(){
  size(500,500, P3D);
  smooth();
  ceva = new ArrayList<Ceva>();
  points = new PVector[total];
  for(int i = 0; i < total; i++){
    float t = map(i, 0, total, 0, TWO_PI+0.1);
    float x = a * (cos(3 * t) + (5 * cos(t)));
    float y = a * sin(6 * t);
    points[i] = new PVector(x,y);
  }
}

void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  rotateZ(QUARTER_PI);
  PVector v1 = points[count];
  PVector v2 = points[count2];
  ceva.add(new Ceva(v1, v2));
  beginShape(LINES);
  for(int i = ceva.size()-1; i >= 0; i--){
    Ceva c = ceva.get(i);
    c.display();
    if(c.isDead()){
      ceva.remove(i);
    }
  }
  endShape();
}

void update(){
  count++;
  count2--;
  if(count >= total-1){
    count = 0;
  }
  if(count2 <= 1){
    count2 = total-1;
  }
}