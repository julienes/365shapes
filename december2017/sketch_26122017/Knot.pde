class Knot {
  float beta;
  Knot(float _b){
    beta = _b;
  }
  void display(){
    float r = 0.8 + 1.6 * sin(6 * beta);
    float theta = 2 * beta;
    float phi = 0.4 * PI * sin(12 * beta);
    float x = 70 * (r * cos(phi) * cos(theta));
    float y = 70 * (r * cos(phi) * sin(theta));
    float z = 50 * (r * sin(phi));
    vertex(x,y,z);
  }

}