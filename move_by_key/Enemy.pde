class Enemy{
  float x, y, r;
  Enemy(float x,float y, float r){
    this.x = x;
    this.y = y;
    this.r = random(10,r);
  }
  
  void display() {     
    fill(#0000ff);
    noStroke();
    ellipse(x, y, r, r); 
    noFill();
  }
  
  float getX(){ return x;}
  float getY(){ return y;}
}