int total = 200;
float r = 0.9;
float R = 30;

boolean reverse = false;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(5);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  ruban();
  pushMatrix();
  rotate(PI);
  ruban();
  popMatrix();
}

void ruban(){
  change();
  beginShape();
  for(int i = 0; i < total; i++){
    float t = map(i, 0, total, 0, TWO_PI+0.5);
    float x = R * ((3*(r*r)*((r*r)-1)-(6*r)*(1+(r*r*r*r)) * cos(t) + ((r*r*r*r*r*r)-1)*(4*(cos(t)*cos(t))-1))*sin(t) / (3*(r*r*r)));
    float y = R * ((4*(1-(r*r*r*r*r*r))*(cos(t) * cos(t) * cos(t))-3*r*(1 + (r*r*r*r))+3*((r*r)-1)*(1+(r*r*r*r))*cos(t)+6*r*(1 + (r*r*r*r))*(cos(t)*cos(t))) / (3*(r*r*r)));
    float z = 2*sin(t)*((r*r)-1) / r;
    vertex(x,y,z);
  }
  endShape();
}

void change(){
  if(!reverse){
    r+=0.002;
    if(r >= 1){
      reverse = true;
    }
  }
  if(reverse){
    r-=0.002;
    if(r <= 0.6){
      reverse = false;
    }
  }
}