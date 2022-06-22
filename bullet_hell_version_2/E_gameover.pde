void gameover(){
  image(gameoverback,0,0,width,height);
  fill(black);
  textSize(50);
  text("Gameover",width/2 -150, height/2-100);
  text("Click To Retry", width/2 - 200, height/2 + 100);
}

void gameoverClicks(){
  mode = INTRO;
  reset();
}
