class Pixel {

  float x, y, size;
  color c;

  Pixel() {
    x = random(width);
    y = random(height);
    c = get( int(x), int(y));
    size = 40;
  }

  void show() {
    noStroke();
    fill(c);
    rect(x, y, size, size);
  }

  void act() {
    size = dist(myBouncer.x, myBouncer.y, x, y)/10;
    //alpha = dist(mouseX, mouseY, x, y)/3;
  }
}
