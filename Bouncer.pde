class Bouncer {
 
  float x, y, vx, vy;
  int h, s, b;
  
  Bouncer() {
    x = width/2;
    y = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    h = int(random(255));
    s = 255;
    b = 255;
  }
  
  void act() {
    x = x + vx;
    y = y + vy;
    if (x < 32 || x > width-32)  vx = -vx;
    if (y < 32 || y > height-32) vy = -vy;
  }
  
  void show() {
    strokeWeight(6);
    stroke(0);
    fill(h,s,b);
    circle(x,y,64);
  }
}
