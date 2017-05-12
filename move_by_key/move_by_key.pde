Player g;
boolean pressed;
void setup(){
  size(800,600); // window size
  frameRate(30); // set frameRate
  g = new Player(width/2,height/2,10);
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