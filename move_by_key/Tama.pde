class Tama{
  float x, y, r;
  float dx, dy;
  Tama(float x, float y, float dx, float dy){
    this.x = x; this.y = y; this.r = 10;
    this.dx = dx; this.dy = dy;
  }
  
  void display() {     
    fill(#AA00AA);
    noStroke();
    ellipse(x, y, r, r); 
    x += dx;
    y += dy;
    noFill();
  }
  
  boolean hit(float px, float py){
    float dx = px - x;
    float dy = py - y;
    if(sqrt(dx * dx + dy * dy) < r)return true;
    return false;
  }
}