Graph g;

void setup(){
  size(200,100); // window size
  frameRate(6000); // set frameRate
  g = new Graph(0,0,10);
}

void draw(){
  background(204);
  g.display(mouseX,mouseY); // draw circle
}

void keyPressed() {
  int keyIndex = 0;
  println(key);
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A' + 1;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a' + 1;
  }
  g.setSize(keyIndex * 3 + 10);
}

class Graph {
  float x, y, r;
  Graph(float x, float y, float r){
     this.x = x; this.y = y;
     this.r = r;
  }
  void display(float x, float y) { ellipse(x, y, this.r, this.r); }
  void setSize(float r) {this.r = r;}
}