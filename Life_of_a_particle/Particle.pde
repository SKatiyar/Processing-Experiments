class Particle {
  float partSize;
  PShape part;
  
  Particle() {
    partSize = random(1, 15);
    part = createShape(RECT, partSize);
    part.setFill(color(23, 90, 55));
    part.setStroke(false);
  }
}
