Flower myFlower1;
Flower myFlower2;


int r=60; 
//float ballX;
float ballY;

void setup() {
  size(700,500);
  
  myFlower1 = new Flower(25,8,100,200,#FA0330,3,1,1);
  myFlower2 = new Flower(25,8,325,100,#FA0330,5,-1,-1);
}

void draw(){
  background(#43AF76);
  myFlower1.Display();
  myFlower1.Bounce();
  myFlower1.Move();
  myFlower2.Display();
  myFlower2.Bounce();
  myFlower2.Move();
}  
