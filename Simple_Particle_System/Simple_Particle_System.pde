ParticleSystem ps;

void setup() {
  size(700, 700, OPENGL);
  ps = new ParticleSystem(50, new PVector(width/2, height/2, width/2));
  hint(ENABLE_DEPTH_TEST);
}

void draw() {
  background(0);
  ps.run();
}
