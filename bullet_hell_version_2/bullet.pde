class Bullet extends GameObject {

  Bullet() {
    super(player.x, player.y, 0, -10, 20, blue, 2);
  }

  void act () {
    super.act();
    if (offScreen()) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }

  void show() {
    image(bullet123, x-10, y, size, size);
  }
}

class Bullet2 extends GameObject {

  Bullet2() {
    super(player.x - 20, player.y, 0, -10, 20, blue, 2);
  }

  void act () {
    super.act();
    if (offScreen()) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }

  void show() {
    image(bullet123, x-10, y, size, size);
  }
}

class Bullet3 extends GameObject {

  Bullet3() {
    super(player.x + 20, player.y, 0, -10, 20, blue, 2);
  }

  void act () {
    super.act();
    if (offScreen()) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }

  void show() {
    image(bullet123, x-10, y, size, size);
  }
}
