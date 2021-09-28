PImage img;
Pixel[] myPixels;
Bouncer myBouncer;

int numPixels = 500;
//extension: 
//* put an image in the background
//* grow instead of shrink
//* can you change the point of focus to a point that bounces around the screen?

void setup() {
  fullScreen();
  img = loadImage("jonHartleyFolz.jpg");
  img.resize(width, height);  
  image(img, 0, 0);
  
  rectMode(CENTER);
  noStroke();
  
  myPixels = new Pixel[numPixels];

  int i = 0;
  while (i < numPixels) {
    myPixels[i] = new Pixel(); 
    i++;
  }
  
  myBouncer = new Bouncer();
}

void draw() {
  image(img, 0, 0);
  //fill(0, 10);
  //rect(width/2, height/2, width, height);
  
  //myBouncer.show();
  myBouncer.act();
  
  int i = 0;
  while (i < numPixels) {
     myPixels[i].act();
     myPixels[i].show();
     i++;
  }
}
