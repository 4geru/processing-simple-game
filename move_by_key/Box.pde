class Box{
  float x, y, r;
  boolean state;
  Box(float x,float y, float r){
    this.x = x;
    this.y = y;
    this.r = random(10,r);
    state = false;
  }
  
  void display() {     
    fill(#FFAA00);
    noStroke();
    ellipse(x, y, r, r);
    noFill();
  }
  
  boolean hit(float px, float py){
    float dx = px - x;
    float dy = py - y;
    if(sqrt(dx * dx + dy * dy) < r - 10)state = true;
    return state;
  }
  
  boolean hitted(){ return state; }
}