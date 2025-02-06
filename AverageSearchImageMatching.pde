import controlP5.*;

int yScl = 20;
int xScl = 20;
int ySlider = yScl;
int xSlider = xScl;
int resolution = 0;
Boolean tog = false;
Boolean tog2 = true;

float [] rnds;
PImage base;
PImage map;
PImage bird;
PImage person;

ControlP5 cp5;

ArrayList<sq> input;
ArrayList<sq> pieces;


void setup() {
  size(1080, 1080, P3D);

  bird = loadImage("bird.jpg");
  person = loadImage("person.jpg");

  bird.resize(width, height);
  person.resize(width, height);
  controllers();
}

void draw() {
  if (cp5.getController("tog2").getValue() == 0) {
    base = bird;
    map =  person;
  } else {
    base = person;
    map =  bird;
  }
  yScl = ySlider;
  xScl = xSlider;
  input = inputLIST(base);
  pieces = inputLIST(map);
  background(255);
  for (int i = 0; i < input.size(); i++) {
    sq s = input.get(i);
    push();
    sq piece = getMatch(s);
    image(piece.img, s.v.x, s.v.y);
    pop();
  }

  //saveFrame("frame" + ".jpg");
  //noLoop();
}



sq getMatch(sq s) {
  int saveIndex = 0;
  sq result = pieces.get(0);
  float target = MAX_INT;
  for (int i = 0; i < pieces.size(); i+=resolution) {
    sq piece = pieces.get(i);
    float temp = 0;

    for (int n = 0; n < piece.colors.length; n+=resolution) {
      temp += dist(red(s.colors[n]), green(s.colors[n]), blue(s.colors[n]), red(piece.colors[n]), green(piece.colors[n]), blue(piece.colors[n]));
    }
    if (temp < target) {
      target = temp;
      result = piece;
      saveIndex = i;
    }
  }
  if (cp5.getController("tog").getValue() == 1) {
    pieces.remove(saveIndex);
  } else {
  }
  return result;
}
