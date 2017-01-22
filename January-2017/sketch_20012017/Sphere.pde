class Sphere{
  Sphere(){
  
  }
  
  void display(){
    lights();
    spotLight(51, 102, 126, 50, 50, 400,0, 0, -1, 0, 200); 
    sphere(60);
    pushMatrix();
    translate(50, 30);
    sphere(30);
    popMatrix();
    pushMatrix();
    translate(-40, 50);
    sphere(40);
    popMatrix();
  }
}