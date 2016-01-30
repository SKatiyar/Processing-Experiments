ParticleSystem ps;

void setup() {
  size(700, 700, P3D);
  orientation(LANDSCAPE);
  ps = new ParticleSystem(10000);
}

void draw() {
  background(0);
  ps.update();
  ps.display();
}
