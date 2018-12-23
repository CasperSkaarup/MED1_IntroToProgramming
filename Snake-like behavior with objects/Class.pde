class Flower {

  float x;
  float y;
  float r;

  void display(float x, float y, float r) {
    int numPetals = 8;  //Number of petals
    
    for (float i = 0; i < PI*2; i += 2*PI/numPetals) {
      float R = r*1.2;
      float X = x+r*cos(i);
      float Y = y+r*sin(i);
      
      ellipseMode(CENTER);
      fill (#FF0320);
      ellipse(X, Y, r, r);
      fill(#FAF203);
      ellipse(x, y, R, R);
    }
  }
}
