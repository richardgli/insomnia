//for displaying the instructions and controls when the player clicks on "Instructions" in the main menu
void instructionsPage() {
  background(0);
  PFont font;
  PFont font2;
  PImage controls;
  font = loadFont("FelixTitlingMT-48.vlw");
  font2 = loadFont("BookAntiqua-Italic-48.vlw");
  controls = loadImage("controls.png");
  fill(255);
  textFont(font, 64);
  text("BACK", 50, height - 100);
  fill(#C10000);
  textFont(font2, 30);
  //all the text describing the game and also the controls
  text("It's 2:50 AM.", 50, 350);
  text("You find yourself in the clutches of insomnia, at the brink of insanity.", 50, 400);
  text("Every ticking second you snowball further down the depths of your fears. You have 10 minutes left before confronting the looming threat of Mother.", 50, 450); 
  text("You find yourself completing tasks around the room as an attempt to maintain composure, but you slowly succumb to the darkness.", 50, 500);
  text("You solve puzzles and uncover secrets, all in the hopes of fending off the demons around the room that are only a figment of your imagination.", 50, 550);
  text("Will you escape the grasp of insomnia, or will you fall in the hands of your sleep deprivation?", 50, 600);
  fill(255);
  text("Player movement controlled by WS keys; mouse used to look around; E, Q, R, and left-click to interact with objects;", 250, 670);
  text("right-click to pickup; F to change perspectives; ESC to pause the game; C to toggle sprint", 370, 700);
  textFont(font, 150);
  text("INSTRUCTIONS", width/2 - 550, 250);
  controls.resize(600, 350);
  image(controls, 700, 710);
  textFont(font, 64);
  text("BACK", 50, height - 100);
  //darkens the button whenever the player hovers over it with their cursor
  if (mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    fill(54, 51, 51);
    text("BACK", 50, height - 100);
  }
}
