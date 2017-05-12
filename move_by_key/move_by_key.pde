Graph g;
boolean pressed;
void setup(){
  size(800,600); // window size
  frameRate(30); // set frameRate
  g = new Graph(width/2,height/2,10);
  pressed = false;
}

void draw(){
  background(204);
  g.display(); // draw circle
}

void keyPressed() {
  pressed = true;
  int keyIndex = 0;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A' + 1;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a' + 1;
  }
  switch(keyIndex-1){
     case 'a' - 'a':
     g.left(); break;
     case 'd' - 'a':
     g.right(); break;
     case 'w' - 'a':
     g.up(); break;
     case 's' - 'a':
     g.down(); break; 
     default :
  }
}
void keyReleased() {
  pressed = false; 
}

class Graph {
  float x, y, r, sp, sx, dx, sy, dy;
  Graph(float x, float y, float r){
     this.x = x; this.y = y;
     this.r = r; this.sp = 10;
  }
  void display() { 
    println(x, sx, width);
    x = (checkWidth(x, r) != 0 ? checkWidth(x, r) : x + sx * sp / 5);
    y = (checkHeight(y, r) != 0 ? checkHeight(y, r) : y + sy * sp / 5);
    
    ellipse(x, y, this.r, this.r); 
    if(this.sx != 0 && !pressed)this.sx += dx * -1 / 2;
    if(this.sy != 0 && !pressed)this.sy += dy * -1 / 2;
  }
  float checkHeight(float y,float r){
    if(y < r/2){ sy = 0; dy = 0; return r/2; } // attach up
    if(y > height - r/2){ sy = 0; dy = 0; return height - r/2; }// attach bottom
    return 0;
  }
  float checkWidth(float x,float r){
    if(x < r/2){ sx = 0; dx = 0; return r/2; } // attach left
    if(x > width - r/2){ sx = 0; dx = 0; return width - r/2; }// attach right
    return 0;
  }
  void setSize(float r){ this.r = r; }
  void up()   { sy --; dy = -1; }
  void down() { sy ++; dy = 1; }
  void right(){ sx ++; dx = 1; }
  void left() { sx --; dx = -1; }
}