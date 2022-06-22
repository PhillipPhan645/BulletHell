class Enemy extends GameObject {
  int cooldown, threshold;


  Enemy() {
    super(random(40, 760), -20, 0, 3, 80, yellow, 1);
    threshold = 50;
    cooldown = threshold;
  }


  void act() {
    super.act();


    //shoot
    cooldown++;
    if (lives == 1 && cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if ((obj instanceof Bullet)||(obj instanceof Bullet2)||(obj instanceof Bullet3)) {
        if (collidingWith(obj)) {
          lives = 0;
          obj.lives = 0;
          score = score + 10;
        }
        if (lives < 1) {
          objects.add(new Explosion(x, y));
        }
      }
      i++;
    }
    if (offScreen()) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }


  void show() {
    image(enemyv1, x-40, y, size, size);
  }
}
