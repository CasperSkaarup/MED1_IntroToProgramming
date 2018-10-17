class Flower {
  
  float r;       //diameter of petals
  int numPetals;  //Number of petals
  float xpos;       //x-position of flower
  float ypos;       //y-position of flower
  int petalsC;    //color of petals
  float speed;    //speed of flower 
  float xdi;     //direction of x
  float ydi;     //direction of y
  
  //Constructor
  Flower(float _r, int _numPetals, float _x, float _y, int _petalsC, float _speed, float _xdi, float _ydi){
   r = _r;
   numPetals = _numPetals;
   xpos = _x;
   ypos = _y;
   petalsC = _petalsC;
   speed = _speed;
   xdi = _xdi;
   ydi = _ydi;
  }
  
  void Display() {
     for(float i = 0; i < PI*2; i += 2*PI/numPetals){
        float R = r*1.2;
        float X = xpos+r*cos(i);
        float Y = ypos+r*sin(i);
        ellipseMode(CENTER);
        fill(#FAF203);
        ellipse(xpos,ypos,R,R);
        fill (petalsC);
        ellipse(X,Y,r,r);
        // println("X = " + X + " Y = " + Y);
     }
  }
  
  void Move() {
    xpos += speed *xdi;
    ypos += speed *ydi;
  }
  
  void Bounce() {
    if(xpos >= width-r/2 || xpos <= r/2){
     xdi *= -1; 
    }
    if(ypos >= height-r/2 || ypos <= r/2){
     ydi *= -1; 
    }
  }
}
