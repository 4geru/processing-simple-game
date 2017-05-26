Player player;
Box[] b;
Enemy[] enemeies;
Tama[] tamas;
boolean pressed;
int time = 1;
void setup() {
  size(800, 600); // window size
  frameRate(30); // set frameRate
  player = new Player(width/2, height/2, 10);
  b = new Box[10];
  enemeies = new Enemy[10];
  for (int i = 0; i < 10; i ++) {
    b[i] = new Box(random(0, width), random(0, height), 100); // draw Box
    enemeies[i] = new Enemy(random(0, width), random(0, height), 50);  
  }
  
  tamas = new Tama[0];
  pressed = false;
}

void draw() {
  background(204);
  // judge hit
  float px = player.getX(), py = player.getY();
  for (Box box : b) { // display box
    if (!(box.hit(px, py) || box.hitted()))
      box.display(); // draw Box
  }
  // make tama
  if(millis() / 1000 == time){
    for(Enemy enemy: enemeies){
      tamas = (Tama[])append(tamas,new Tama(enemy.getX(),enemy.getY(), random(-1,1), random(-1,1)));
    }
    time ++;
  }
  
  for(Tama tama: tamas){ if(tama.hit(px,py)){println(true);setup();} tama.display(); }
  for(Enemy enemy: enemeies){ enemy.display(); }
  player.display(); // draw Player
}

void keyPressed() {
  pressed = true;
  int keyIndex = 0;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A' + 1;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a' + 1;
  }
  switch(keyIndex-1) {
  case 'a' - 'a':
    player.left(); 
    break;
  case 'd' - 'a':
    player.right(); 
    break;
  case 'w' - 'a':
    player.up(); 
    break;
  case 's' - 'a':
    player.down(); 
    break; 
  default :
  }
}
void keyReleased() {
  pressed = false;
}