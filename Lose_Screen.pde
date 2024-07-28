//for the losing screen whenever the player is unable to complete the game under 10 minutes or when they are caught by the chasing entity
void lose() {
  //stops all sounds that may be playing when the player loses
  jumpFile.stop();
  creakDoor.stop();
  chaseFile.stop();
  knockFile.stop();
  openDoorFile.stop();
  PFont font;
  background(0);  
  PImage text;
  //jumpscare image
  text = loadImage("losescreen.png");
  cursor();
  textAlign(BASELINE);
  camera();
  fill(255);
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 64);
  //button for main menu
  text("Menu", 50, height - 100);
  text.resize(1085, 1023);
  image(text, 450, 50);
  fill(255);
  //hovering over the menu button will darken it
  if (mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    fill(54, 51, 51);
    text("Menu", 50, height - 100);
    //returns the player back to the main menu if they left-click the button
    if (mousePressed && mouseButton == LEFT) {
      page = "Menu";
    }
  }
}
