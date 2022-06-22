void pause() {

  
  textSize(80);
  text("Paused", width/2-150, height/2);
  textSize(20);
  text("(click to resume)", width/2-90, height/2+50);

}

void pauseClicks() {
  mode = GAME;
}
