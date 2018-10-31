class Message{
 float ypos;
 float speed;
 
 Message(float _ypos, float _speed){
   ypos = _ypos;
   speed = _speed;
 }
 
 void display(){
  textAlign(CENTER);
  textSize(60);
  text("YOU WIN", width/2,ypos);
 }
 
 void move(){
  ypos += speed;
 }
}
