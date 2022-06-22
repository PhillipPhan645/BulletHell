class Explosion extends GameObject {
  float hue;

  Explosion(float x, float y) {
    super(x, y, 20*random(-2, 2), 20*random(-2, 2), 15, red, 1);
    hue = random(0, 255);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }



  void show() {
    fill(hue, 0, c);
    square(x, y, size);
  }
}
