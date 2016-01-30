class ParticleSystem {

  ArrayList <Particle> particles;
  PVector origin;
  int num = 0;

  ParticleSystem(int number, PVector location) {
    num = number;
    particles = new ArrayList <Particle> ();
    origin = location.get();
    for(int i = 0; i < number; i++) {
      particles.add(new Particle(origin));
    }
  }
  
  void run() {
    for(int i = num - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if(p.isDead()) {
        particles.remove(i);
        particles.add(new Particle(origin));
      }
    }
  }
}
