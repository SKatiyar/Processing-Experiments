class Particle {
  PVector origin;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float limit;
  float r, b, g;

  Particle(PVector l) {
    origin = l.get();
    location = l.get();
    velocity = PVector.random3D();
    r = random(0, 256);
    b = random(0, 256);
    g = random(0, 256);
    update();
    display();
  }

  void run() {
    update();
    display();
  }
  
  void update() {
    acceleration = PVector.random3D();
    velocity.add(acceleration);
    location.add(velocity);
  }
  
  void display() {
    noFill();
    stroke(r, b, g);
    pushMatrix();
    translate(location.x, location.y, location.z);
    sphere(1);
    popMatrix();
  }

  boolean isDead() {
    limit = PVector.dist(location, origin);
    if (limit > width/2) {
      return true;
    } else {
      return false;
    }
  }
}
