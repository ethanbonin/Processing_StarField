Star[] stars = new Star[1000];
float speed;
float xValue;
float yValue;
void setup() {
  size(800, 800);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}


void draw() {
  //speed = map(mouseX, 0, width, 0, 20);
  speed = 10;
  xValue = mouseX;
  yValue = mouseY;
  background(0);
  translate(xValue, yValue);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  
}