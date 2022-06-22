void game() {
  fill(Dblue, 80);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();

  //score
  textSize(30);
  fill(white);
  text("Lives: " + player.lives, width-150, 50);
  if (player.lives == 0) mode = GAMEOVER;
  text("SCORE: " + score, width-475, 50);

}


void addObjects() {
  objects.add(0, new Star());
  if (frameCount % 120 == 0) objects.add(new Enemy());
  if (frameCount % 300 == 0) objects.add(new Enemyv2());
  if (frameCount % 2500 == 0) objects.add(new Enemyv3());
}


void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}


void debug() {
  fill(white);
  textSize(15);
  text(frameRate, 20, 20);
  text(objects.size(), 20, 40);
}


void gameClicks() {
  mode = PAUSE;
}
