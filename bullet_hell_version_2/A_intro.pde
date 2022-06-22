void intro() {
  image(introback, 0, 0, width, height);
  textFont(font);
  fill(black);
  textSize(50);
  text("|BULLET HELL|", width/4, 200);
}

void introClicks() {
  mode = GAME;
}
