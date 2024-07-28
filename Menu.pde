//for the main menu where the player can choose to play the game, read instructions and achievements, and exit the game
void menu() {
  background(0);
  PFont font;
  PImage clock;
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 64);
  fill(255);
  text("PLAY", 300, 445);
  text("ACHIEVEMENTS", 300, 545);
  text("INSTRUCTIONS", 300, 645);
  text("LOG OUT", 300, 745);
  text("EXIT", 300, 845);
  //darkens the buttons if they are hovered upon by the mouse cursor
  if (mouseX > 300 && mouseX < 300 + 200 && mouseY > 445 - 55 && mouseY < 445 + 10) {
    fill(54, 51, 51);
    text("PLAY", 300, 445);
  } else if (mouseX > 300 && mouseX < 300 + 500 && mouseY > 545 - 55 && mouseY < 545 + 10) {
    fill(54, 51, 51);
    text("ACHIEVEMENTS", 300, 545);
   } else if (mouseX > 300 && mouseX < 300 + 500 && mouseY > 645 - 55 && mouseY < 645 + 10) {
    fill(54, 51, 51);
    text("INSTRUCTIONS", 300, 645);
   } else if (mouseX > 300 && mouseX < 300 + 300 && mouseY > 745 - 55 && mouseY < 745 + 10) {
    fill(54, 51, 51);
    text("LOG OUT", 300, 745);
   } else if (mouseX > 300 && mouseX < 300 + 200 && mouseY > 845 - 55 && mouseY < 845 + 10) {
    fill(54, 51, 51);
    text("EXIT", 300, 845);
  }
  //title of the game
  fill(255);
  textSize(200);
  text("INSOMNIA", width/2 - 500, 250);
  text("INSOMNIA", width/2 - 500, 250);
  //clock image 
  clock = loadImage("clock.png");
  image(clock, 900, 450);
  //the colour of the two flashing rectangles change relative to how many milliseconds pass after running the sketch, and they flash red
  fill((millis() % 500), 0, 0);
  rect(1295, 580, 25, 25);
  rect(1295, 670, 25, 25);
}
