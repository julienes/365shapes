JSONObject json;
float[] latitude;
float[] longitude;
float[] posX;
float[] posY;
float minLat = 48.8179051;
float maxLat = 48.9005287;
float minLon = 2.2529149;
float maxLon = 2.4601691;
int R = 110;
float r = 0;
import processing.pdf.*;

boolean savePDF = false;

void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(0.5);
  noFill();
  json = loadJSONObject("june2017.json");
  JSONArray positions = json.getJSONArray("positions");
  
  latitude = new float[positions.size()];
  longitude = new float[positions.size()];
  posX = new float[positions.size()];
  posY = new float[positions.size()];
  
  for (int i = 0; i < positions.size(); i++) {
    
    JSONObject position = positions.getJSONObject(i); 

    latitude[i] = position.getFloat("latitude");
    longitude[i] = position.getFloat("longitude");

  }
  
  for(int i = latitude.length-1; i >= 0; i--) {
        float posX1 = map(latitude[i], minLat, maxLat, 0, PI);
        float posY1 = map(longitude[i], minLon, maxLon, 0, TWO_PI);
        posX[i] = posX1;
        posY[i] = posY1;
   }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  r+=0.03;
  rotateY(r);
  stroke(255);
  sphere(50);
  beginShape(TRIANGLE_STRIP);
  for(int i = posX.length-1; i>=0; i--){
        float x = R * cos(posX[i]) * sin(posY[i]);
        float y = R * sin(posX[i]) * sin(posY[i]);
        float z = R * cos(posY[i]);
        vertex(x,y,z);
  }
  endShape();
}