float r = 0; 
float theta = 0;
float a = 25;
float n = 0.01;


void setup() {  
//size(500, 500);  
fullScreen();
background(255); 
}

void draw() {   
  n += 0.01;
  float s = noise(n)*a;
  
  float x = r * cos(theta);  
  float y = r * sin(theta);
  
  float b = map(r,0,height,200,255);
  float g = map(r,0,width/2,10,255);
  
  noStroke(); 
  fill(0,g,b);  
  ellipse(x + width/2, y + height/2, s, s); 
  
  theta += 0.01; 
  r += 0.05;
  }
