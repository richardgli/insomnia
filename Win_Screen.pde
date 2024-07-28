//for the winning screen, when the player sleeps 
void win() {
  background(0);
  //stop all sound that might be playing
  jumpFile.stop();
  creakDoor.stop();
  chaseFile.stop();
  knockFile.stop();
  openDoorFile.stop();
  if (winLoseNum == 0) {
    winFile.play();
    winLoseNum++;
  }
  PFont font; 
  PImage text;
  text = loadImage("winscreen.png");
  cursor();
  textAlign(BASELINE);
  camera();
  fill(255);
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 64);
  text("Menu", 50, height - 100);
  image(text, 0, 100);
  fill(255);
  //return back to the main menu when the player clicks on the button
  if (mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    fill(54, 51, 51);
    text("Menu", 50, height - 100);
    if (mousePressed && mouseButton == LEFT) {
      page = "Menu";
    }
  }
}
