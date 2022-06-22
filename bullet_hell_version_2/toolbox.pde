void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == ' ') spacekey = false;
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionClicks();
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(Bred);
  } else {
    stroke(white);
  }
}

//tactile function (circles)
void tact (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(Bred);
  } else {
    stroke(white);
  }
}

//tactile (words)
void tax(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(Bred);
  } else {
    fill(white);
  }
}

//tactile pause function
void Ptactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(Bred);
  } else {
    stroke(purple);
  }
}

void reset() {
  player.lives = 3;
  objects.add(player);  
  player.x = width/2;
  player.y = height/2;
  score = 0;
}
