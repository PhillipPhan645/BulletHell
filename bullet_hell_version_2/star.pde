class Star extends GameObject {

  //constructor (x, y, vx, vy, size, c, lives);
  Star() {
    super(random(width), 0, 0, 0, random(1,5), white, 1);
    vy = size;
  }

  //behaviour
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
}
