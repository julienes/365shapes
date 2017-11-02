ArrayList<Boxes>boxes;
ArrayList<PVector> base1;
ArrayList<PVector> base2;
int count = 0;
boolean open = false;
float n1 = 0.1, n2 = 1.7, n3 = 1.7, m = 5, a = 1, b = 1;
float part1, part2, part3;
float total = 100;
float increment = TWO_PI / total;
int R = 150;

float supershape(float theta){
    
    float part1 = (1 / a) * cos(theta * m / 4);
    part1 = abs(part1);
    part1 = pow(part1, n2);
    
    float part2 = (1 / b) * sin(theta * m / 4);
    part2 = abs(part2);
    part2 = pow(part2, n3);
    
    float part3 = pow(part1 + part2, 1/n1);
    
    if(part3 == 0){
      return 0;
    }
    
    return (1/part3);
  }


void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  noFill();
  strokeWeight(10);
  boxes = new ArrayList<Boxes>();
  base1 = new ArrayList<PVector>();
  base2 = new ArrayList<PVector>();
  for(float angle = 0; angle < TWO_PI; angle+=increment){
    float r = supershape(angle);
    float x = R * r * cos(angle);
    float y = R * r * sin(angle);
    base1.add(new PVector(x,y));
  }
  
  n1 = 1;
  n2 = 1;
  n3 = 1;
  m = 6;
  
  for(float angle = 0; angle < TWO_PI; angle+=increment){
    float r = supershape(angle);
    float x = R * r * cos(angle);
    float y = R * r * sin(angle);
    base2.add(new PVector(x,y));
  }
  
  for(int i = 0; i < base1.size(); i++){
    boxes.add(new Boxes(i));;
  }
}





void draw(){
  background(6,7,175);
  counter();
  translate(width/2, height/2);
  for(Boxes b : boxes){
    b.update(open);
    b.display();
  }
}

void counter(){
  count++;
  if(!open){
    if(count >= 50){
      open = true;
      count = 0;
    }
  }if(open){
    if(count >= 50){
      open = false;
      count = 0;
    }
  }
}