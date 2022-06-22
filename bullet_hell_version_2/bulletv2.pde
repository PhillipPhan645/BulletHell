class v2bullet extends GameObject {

  v2bullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 20, yellow, 1);
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
    if (offScreen()) lives = 0;
  }


  void show() {
    image(v2bullet, x-10, y, size, size);
  }
}
