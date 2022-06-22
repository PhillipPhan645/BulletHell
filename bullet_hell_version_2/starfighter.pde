class Starfighter extends GameObject {

  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 80, cyan, 3);
    threshold = 15;
    cooldown = threshold;
  }

  void act() {
    super.act();
    //starfighter movement
    if (wkey) vy = -5;
    if (skey) vy =  5;
    if (akey) vx = -5;
    if (dkey) vx =  5;
    if (x < 20)  x = 20;
    if (x > 780) x = 780;
    if (y < 20)  y = 20;
    if (y > 780) y = 780;
    if (!wkey && !skey) vy = vy * 0.9;
    if (!akey && !dkey) vx = vx * 0.9;


    //starfighter fire + fire rate
    cooldown++;
    if (spacekey && cooldown >= threshold) {
      objects.add(new Bullet());
      objects.add(new Bullet2());
      objects.add(new Bullet3());
      cooldown = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if ((obj instanceof EnemyBullet)||(obj instanceof v2bullet) || (obj instanceof BossBullet)){
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }
    if (lives < 1) mode = GAMEOVER;
  }

  void show() {
    image(ship, x-40, y, size, size);
  }
}
