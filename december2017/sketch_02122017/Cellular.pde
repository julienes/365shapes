class Cellular{
  int[] cells;
  int generation = 0;
  
  int[] ruleset = {0,1,1,1,1,0,0,1};
  
  int w = 10;
  
  Cellular(){
    cells = new int[400/w];
    
    for(int i = 0; i < cells.length; i++){
      cells[i] = 0;
    }
    
    cells[cells.length/2] = 1;
    generation = 10;
  }
  
  void generate(){
    int[] nextgen = new int[cells.length];
    
    for(int i = 1; i < cells.length-1; i++){
      int left = cells[i-1];
      int me = cells[i];
      int right = cells[i + 1];
      nextgen[i] = rules(left, me, right);
    }
    
    cells = nextgen;
    generation++;
    if(generation > 100){
      generation = 10;
      background(6,7,175);
    }
  }
  
  void display(){
    for(int i = 10; i < cells.length; i++){
      if(cells[i] == 1){
        fill(255);
      }else{
        fill(6,7,175);
      }
      rect(i*w, (generation*w)/2.4, w,w);
    }
  }
  
  int rules(int a, int b, int c){
    if(a == 1 && b == 1 && c == 1) return ruleset[0];
    if(a == 1 && b == 1 && c == 0) return ruleset[1];
    if(a == 1 && b == 0 && c == 1) return ruleset[2];
    if(a == 1 && b == 0 && c == 0) return ruleset[3];
    if(a == 0 && b == 1 && c == 1) return ruleset[4];
    if(a == 0 && b == 1 && c == 0) return ruleset[5];
    if(a == 0 && b == 0 && c == 1) return ruleset[6];
    if(a == 0 && b == 0 && c == 0) return ruleset[7];
    
    return 0;
  }
}