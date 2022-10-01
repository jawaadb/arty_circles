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

  // Semi-transparent circles. Red stroke, green fill
  fill(#8000ff00);
  stroke(#80ff0000);
  strokeWeight(3);

  // Draw 6 pentagon circle sets
  for (int n=1; n<=6; n++) {
    drawCirclePentagon((float)n);
  }
}

void drawCirclePentagon(float n) {
  // Constant params
  float k = 0.6455;
  float c = 0.4762;
  float A = radians(18.0);
  float refLen = 25;

  float circleRadius = c*n;
  float pentagonRadius = 1.0 + k*(0.5*n*(n+1)-1);
  float theta = A*cos(n*PI) - radians(2.0);

  circleRadius *= refLen;
  pentagonRadius *= refLen;

  pushMatrix();
  rotateZ(theta);
  for (int i=0; i<5; i++) {
    circle(0, -pentagonRadius, circleRadius*2);
    rotateZ(radians(72.0));
  }
  popMatrix();
}
