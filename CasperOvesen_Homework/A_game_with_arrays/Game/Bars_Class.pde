class Bars{
  float xpos; //x-position of bar
  float ypos; //y-position of bar 
  float room; //room between bars
  float speed;
  
  Bars(float _xpos, float _ypos, float _room, float _speed){
    xpos = _xpos;
    ypos = _ypos;
    room = _room;
    speed = _speed;
  }
  
  void display(){
    rect(0,ypos,xpos-room,10);
    rect(xpos,ypos,width,10);
  }
  
  void move(){
   ypos += speed; 
  }
}
