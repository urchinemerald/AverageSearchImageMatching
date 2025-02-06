class sq {
  PVector v;
  PImage img;
  float xs, ys;
  color [] colors;
  boolean picked;
  public sq(PVector v, PImage img, float xs, float ys, color [] colors) {
    this.v = v;
    this.img = img;
    this.xs = xs;
    this.ys = ys;
    this.colors = colors;
  }
}
