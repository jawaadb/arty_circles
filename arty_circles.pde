void setup() {
  size(1280, 720, P3D);
  surface.setTitle("Exploring circle art");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  surface.setAlwaysOnTop(true);
}

void draw() {
  background(247); // light grey
  translate(width/2, height/2);

  // Semi-transparent circles. Red stroke, green fill
  fill(#8000ff00);
  noStroke();

  // Draw 6 pentagon circle sets
  for (int n=1; n<=6; n++) {
    drawCirclePentagon((float)n);
  }
}

void drawCirclePentagon(float n) {
  /* Constant params */
  float k = 0.6455;
  float c = 0.4762;
  float A = radians(18.0);
  float refLen = 25;

  float a0 = 26.5; float a1 = 166.5;
  float b0 = -40.5; float b1 = 94.5; float b2 = 5.0;
  float c0 = 23.5; float c1 = 184.5;

  /* Geometry */
  float circleRadius = c*n;
  float pentagonRadius = 1.0 + k*(0.5*n*(n+1)-1);
  float theta = A*cos(n*PI);

  circleRadius *= refLen;
  pentagonRadius *= refLen;

  /* Colours */
  float hue = cos(0.4*PI*(n-1))*a0+a1;
  float sat = cos(0.4*PI*(n-1))*b0+b1+b2*(n-1);
  float bri = cos(0.4*PI*(n-1))*c0+c1;

  /* Draw */
  push();
  colorMode(HSB, 240.0);
  fill(hue, sat, bri);

  rotateZ(theta);
  for (int i=0; i<5; i++) {
    circle(0, -pentagonRadius, circleRadius*2);
    rotateZ(radians(72.0));
  }
  pop();
}
