PImage imgBg;

void setup() {
  size(1280, 720, P3D);
  surface.setTitle("Exploring circle art");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  surface.setAlwaysOnTop(true);

  imgBg = loadImage("circles ref.png");
}

void draw() {
  background(220,210,202); // light beige background
  translate(width/2, height/2);

  // Draw ref image at centre
  image(imgBg, -height/2, -height/2, height, height);
}
