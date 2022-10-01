void setup() {
  size(1280, 720, P3D);
  surface.setTitle("Exploring circle art");
  surface.setResizable(false);
  surface.setLocation(100, 100);
  surface.setAlwaysOnTop(true);
}

void draw() {
  background(220,210,202); // light beige background
  translate(width/2, height/2);

  // Draw a circle
  circle(0,0,100);
}
