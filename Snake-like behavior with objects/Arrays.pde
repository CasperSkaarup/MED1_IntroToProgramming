int num = 25;
int[] xpos = new int[num];
int[] ypos = new int[num];
int indexPosition = 0;

Flower[] flowers = new Flower[num];

void setup() {
  size(500, 500,P2D);
  for (int i = 0; i < flowers.length; i++) {
    flowers[i] = new Flower();
  }
}

void draw() {
  background(0);
  xpos[indexPosition] = mouseX;
  ypos[indexPosition] = mouseY;
 
  indexPosition += 1;
  
  if (indexPosition == flowers.length) {
    indexPosition = 0;
  }
  for (int i = 0; i < flowers.length; i++) {
    int newpos = (indexPosition+i) % flowers.length;
    float radius = 2*flowers.length-i;
    flowers[i].display(xpos[newpos], ypos[newpos], radius);
  }
}
