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

  drawCirclePentagon(50, 100);
}

void drawCirclePentagon(float circleRadius, float pentagonRadius) {
  pushMatrix();
  for (int i=0; i<5; i++) {
    circle(0, -pentagonRadius, circleRadius);
    rotateZ(360.0 / 5.0 / 180.0 * PI);
  }
  popMatrix();
}
