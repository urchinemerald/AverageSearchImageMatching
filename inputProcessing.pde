

ArrayList<sq> inputLIST(PImage img) {
  background(255);
  ArrayList<sq> list = new ArrayList<sq>();
  img.resize(width, height);
  image(img, 0, 0);

  for (int y = 0; y < height / yScl; y++) {
    for (int x = 0; x < width / xScl; x++) {
      PImage copy = get(x * xScl, y * yScl, xScl, yScl);
      color [] colors = getColors(copy);
      sq s = new sq(new PVector(x * xScl, y * yScl), copy, xScl, yScl, colors);
      list.add(s);
    }
  }
  return list;
}

color [] getColors(PImage copy) {
  copy.loadPixels();
  color [] result = new color [copy.pixels.length];
  arrayCopy(copy.pixels, result);
  return result;
}
