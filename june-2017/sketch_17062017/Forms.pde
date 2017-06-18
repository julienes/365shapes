class Forms{
  ArrayList<Form>form;
  float t;
  float x;
  float y;
  float a;
  Forms(float _a){
    form = new ArrayList<Form>();
    a = _a;
  }
  
  void display(){
    t+=0.02;
    x = a/2*(cos(t)+cos(3*t));
    y = a/2*(sin(t)+sin(3*t));
    form.add(new Form(x,y,a));
    for(int i = form.size()-1; i>0; i--){
      Form f = form.get(i);
      f.display();
      if(f.isDead()){
        form.remove(i);
    }
    }
    println(form.size());
  }
}