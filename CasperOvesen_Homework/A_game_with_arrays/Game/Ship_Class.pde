class Ship{
  float shipx; //ship x-position
  float shipy; //ship y-position
  float ships; //ship size
  float shiph; //direction horizontal
  float speed; //speed of ship
  boolean left;
  boolean right;

  Ship(float _shipx, float _shipy, float _ships, float _shiph, float _speed){
   shipx = _shipx;
   shipy = _shipy;
   ships = _ships;
   shiph = _shiph;
   speed = _speed;
  // right = _right;
  // left = _left;
  }
  
  void display(){
    fill(255);
    noStroke();
    rect(shipx,shipy,ships,ships);
    triangle(shipx,shipy,(shipx+ships),shipy,(shipx+ships/2),(shipy-ships));
    triangle(shipx,(shipy+ships),(shipx-ships/2),(shipy+ships*2),shipx,(shipy+ships/2));
    triangle((shipx+ships),(shipy+ships),(shipx+ships*1.5),(shipy+ships*2),(shipx+ships),(shipy+ships/2));
    move();
  }
  
  void move(){
    if(keyPressed){
      if(keyCode == LEFT && shipx >= 0+ships/2){
        shiph = -1;
        shipx += speed*shiph;
      }
      if(keyCode == RIGHT && shipx <= width-ships*1.5){
        shiph = 1;
        shipx += speed*shiph;
      }
    }
  }
}
