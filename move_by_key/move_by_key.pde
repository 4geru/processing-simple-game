Graph g;

void setup(){
  size(200,100); // window size
  frameRate(6000); // set frameRate
  g = new Graph(0,0,10);
}

void draw(){
  background(204);
  g.display(); // draw circle
}

void keyPressed() {
  int keyIndex = 0;
  println(key);
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A' + 1;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a' + 1;
  }
  switch(keyIndex-1){
     case 'a' - 'a':
     g.right(); break;
     case 'd' - 'a':
     g.left(); break;
     case 'w' - 'a':
     g.up(); break;
     case 's' - 'a':
     g.down(); break; 
     default :
  }
}

class Graph {
  float x, y, r, sp;
  Graph(float x, float y, float r){
     this.x = x; this.y = y;
     this.r = r; this.sp = 1;
  }
  void display() { ellipse(x, y, this.r, this.r); }
  void setSize(float r){ this.r = r; }
  void up()   { this.y += this.sp; }
  void down() { this.y -= this.sp; }
  void right(){ this.x += this.sp; }
  void left() { this.x -= this.sp; }
}