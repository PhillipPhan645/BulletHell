class Enemyv3 extends GameObject {
  int cooldown, threshold;



  Enemyv3() {
    super(width-550, -500, 0, 0.5, 400, yellow, 5);
    threshold = 15;
    cooldown = threshold;
  }


  void act() {
    super.act();


    //shoot
    cooldown++;
    if (lives > 1 && cooldown >= threshold) {
      objects.add(new BossBullet(x+160, y, 0, 10));
      objects.add(new BossBullet(x+240, y, 0, 10));
      objects.add(new BossBullet(x+80, y, 0, 10));
      cooldown = 0;
    }



    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
          score = score + 25;
        }
        if (lives < 1) {
          objects.add(new Enemy());
          objects.add(new Enemy());
          objects.add(new Enemy());
          objects.add(new Enemyv2());
          objects.add(new Enemyv2());
        }
      }
      i++;
    }
    if (y > 1800) lives = 0;
    if (mode == GAMEOVER) lives = 0;
  }



  void show() {
    image(boss, x-40, y, size, size);
  }
}
