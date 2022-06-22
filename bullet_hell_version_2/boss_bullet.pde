class BossBullet extends GameObject {

  BossBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 50, yellow, 1);
  }

  void act() {
    super.act();
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if ((obj instanceof Bullet)||(obj instanceof Bullet2)||(obj instanceof Bullet3)) {
        if (collidingWith(obj)) {
          lives = 0;
          obj.lives = 0;
        }
        if (mode == GAMEOVER) lives = 0;
      }
      i++;
    }
    if (y>height) lives = 0;
  }


  void show() {
    image(bossbullet, x-25, y, size, size);
  }
}
