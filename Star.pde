class Star {
  float x;
  float y;
  float z;

  float pz;

  Star() {
    x = random(-width, width);
    y = random(-width, height);
    z = random(width);
    pz = z;
  }


  public void update() {
    z = z - speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-width, height);
    }
  }


  void show() {
    //float c = map(z, 0, width, 255, 0);
    fill(255);
    noStroke();
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);

    //This causes for an if condition... It maps. IF z = 0, then let it be 16, if z = width then 0
    float r = map(z, 0, width, 16, 0);

    pz = z;
    
    float px = map(sx / pz, 0, 1, 0, width);
    float py = map(sy / pz, 0, 1, 0, height);

    //stroke(255);
    //line(px, py, sx, sy);



    ellipse(sx, sy, r, r);
  }
}