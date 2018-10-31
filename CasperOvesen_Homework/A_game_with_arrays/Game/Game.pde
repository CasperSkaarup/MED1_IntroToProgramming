Ship Ship1;
Bars[] BarsArray = new Bars[100];
Message Message;

  float C = 0;

void setup(){
  size(400,600,P2D);
  Ship1 = new Ship(200,520,20,0,2);
  for (int i = 0; i < BarsArray.length; i++) {
    BarsArray[i] = new Bars(random(100,400),(i*-175+100),100,2); 
  }
  Message = new Message(102*-175,2);
}

void draw(){
  background(0);
  Ship1.display();
  Ship1.move();
  for (int i = 0; i < BarsArray.length; i++) {
    BarsArray[i].display();
    BarsArray[i].move();
  }
  Message.display();
  Message.move();
  collide();
  if (C == 1){
    fill(255);
    rectMode(CENTER);
    rect(width/2,height/2,200,100);
    fill(0);
    textAlign(CENTER);
    textSize(36);
    text("YOU LOSE",width/2,height/2);
    noLoop();
  }
}

void collide(){
  float sx;
  float sy;
  float bx;
  float by;
  float br;
  sx = Ship1.shipx;
  sy = Ship1.shipy;
  for (int i = 0; i < BarsArray.length; i++) {
  bx = BarsArray[i].xpos;
  by = BarsArray[i].ypos;
  br = BarsArray[i].room;
  
  
  if ((sx <= bx-br || sx >= bx) && (sy >= by && sy <= by+10)){
    C = 1;
  }
  }
}
