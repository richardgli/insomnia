//for displaying the page when the player clicks on exit from the main menu
void exitPage() {
  background(0);
  fill(255);
  PFont font;
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 64);
  text("Are you sure you want to exit?", 400, 500);
  fill(#501313);
  rect(770, 540, 125, 75);
  rect(1070, 540, 125, 75);
  fill(255);
  //buttons "Yes" and "No", darkens when cursor hovers over
  text("YES", 780, 600);
  text("NO", 1080, 600);
  if (mouseX > 770 && mouseX < 770 + 125 && mouseY > 540 && mouseY < 540 + 75) {
    fill(54, 51, 51);
    text("YES", 780, 600);
  } else if (mouseX > 1070 && mouseX < 1070 + 125 && mouseY > 540 && mouseY < 540 + 75) {
    fill(54, 51, 51);
    text("NO", 1080, 600);
  }
}

//function specifically for displaying the jumpscare when the player exits the game
void thanks() {
  background(0);
  if (jumpSoundNum == 0) {
    jumpFile.play();
    jumpSoundNum++;
  }
  PImage face;
  face = loadImage("thanks for playing face.png");
  face.resize(1200, 1100);
  image(face, 400, 0);
  fill(255);
}
