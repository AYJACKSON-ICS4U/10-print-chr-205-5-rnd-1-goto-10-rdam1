// forked from 10 PRINT CHR$(205.5+RND(1)); : GOTO 10

// declaring global vars
int w = 16;
int h = 16;
int index = 0;

// setup function
void setup() {
  size(800, 800);
  background(#0000ff);
  strokeWeight(3);
  stroke(224);
  smooth();
}

//line drawing function
void draw() {
  // declares local vars
  int x1 = w*index;
  int x2 = x1 + w;
  int y1 = h*23;
  int y2 = h*24;

  if (random(2) > 1) {
    line(x1, y1, x2, y2); // draws /
  } else {
    line(x2, y1, x1, y2); // draws \
  }

  index++; // adds 
  if (index == width/w) {
    PImage p = get(0, h, width, h*23);
    background(#0000ff);
    set(0, 0, p);
    index = 0; // resets to make a new line
  }
}