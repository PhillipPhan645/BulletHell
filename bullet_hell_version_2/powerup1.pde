class Health extends GameObject {

  Health(float x, float y) {
    super(x, y, 0, 5, 50, blue, 1);
  }

  void act() {
    super.act();
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if ((obj instanceof Bullet)||(obj instanceof Bullet2) || (obj instanceof Bullet3)) {
        if (collidingWith(obj)) {
          lives = 0;
          obj.lives = 0;
        }
      }
      i++;
    }
    if (mode == GAMEOVER) lives = 0;
    if (lives == 0) player.lives++;
  }



  void show() {
    image(health, x, y, size, size);
  }
}
