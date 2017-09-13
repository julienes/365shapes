float inc = 0.1;
float scl = 20;
int cols, rows;
float zoff = 0;
Particle[] particles;
PVector[] flowField;
ArrayList<ParticleSystem>particleS;


void setup()
{
  size(500, 500, P3D);
  cols = floor(width / scl);
  rows = floor(height / scl);
  particles = new Particle[100];
  particleS = new ArrayList<ParticleSystem>();
  noFill();
  for(int i = 0; i < particles.length; ++i)
    particles[i] = new Particle();
    
  flowField = new PVector[cols * rows];
}

void draw() {
  background(6,7,175);
  float yoff = 0;
  for(int y = 0; y < rows; y++) {
    float xoff = 0;
    for(int x = 0; x < cols; x++) {
      // set the vector in the flow field
      int index = x + y * cols; 
      float angle = noise(xoff, yoff, zoff) * TWO_PI * 2;
      PVector v = PVector.fromAngle(angle);
      v.setMag(1); // set the power of the field on the particle
      flowField[index] = v;
      
      xoff += inc;
    }
    yoff += inc;
    zoff += 0.03; // rate the flow field changes
  }
  
  // update and draw the particles
  for(int i = 0; i < particles.length; ++i) {
    particles[i].follow(flowField);
    particles[i].update();
    //particles[i].show();
    particleS.add(new ParticleSystem(particles[i].prevPos.x, particles[i].prevPos.y, particles[i].prevPos.z));
  }
  translate(width/2-200, height/2-250);
  rotateY(PI/6);
  for(int i = 0; i<=particleS.size()-1; i++){
    ParticleSystem s = particleS.get(i);
    s.display();
    if(s.isDead()){
      particleS.remove(i);
    }
  }
}