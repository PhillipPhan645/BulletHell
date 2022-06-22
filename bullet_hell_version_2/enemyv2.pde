class Enemyv2 extends GameObject {
  int cooldown, threshold;

  Enemyv2() {
    super(-100, random(0, 200), 3, 0, 80, yellow, 1);
    threshold = 50;
    cooldown = threshold;
  }


  void act() {
    super.act();


    //shoot
    cooldown++;
    if (lives == 1 && cooldown >= threshold) {
      objects.add(new v2bullet(x, y, 0, 10));
      objects.add(new v2bullet(x+50, y, 0, 10));
      objects.add(new v2bullet(x-50, y, 0, 10));


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
          score = score + 15;
        }
        if (lives < 1) {
          objects.add(new Explosion(x, y));
          objects.add(new Health(x, y));
        }
      }
      i++;
    }
    if (x > 1000) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }


  void show() {
    image(enemyv2, x-40, y, size, size);
  }
}
