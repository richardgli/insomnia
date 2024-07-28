//All boolean variables to check if the achievement has been accomplished
boolean lightsAchievement = false;
String strLightsAchievement = "False";
int lightsNum = 0;
boolean beatGame = false;
String strBeatGame = "False";
boolean hideAchievement = false;
String strHideAchievement = "False";
int hideNum = 0;

//for displaying the achievements page when the player clicks on achievements in the main menu
void achievementsPage() {
  background(0);
  PFont font;
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 50);
  fill(255);
  //text displayed on the screen
  text("BACK", 50, height - 100);
  text("The Electrician", (width / 2) - 250, height / 2);
  text("The Sleeper", (width / 2) - 250, (height / 2) + 100);
  text("Hide and Seek", (width / 2) - 250, (height / 2) + 200);
  //button darkens when cursor hovers over
  if (mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    fill(54, 51, 51);
    text("BACK", 50, height - 100);
  }
  //displays the text as green if the achievement has been accomplished
  if (lightsAchievement == true) {
    fill(#2AAA00);
    text("The Electrician", (width / 2) - 250, height / 2);
  }
  if (beatGame == true) {
    fill(#2AAA00);
    text("The Sleeper", (width / 2) - 250, (height / 2) + 100);
  }
  if (hideAchievement == true) {
    fill(#2AAA00);
    text("Hide and Seek", (width / 2) - 250, (height / 2) + 200);
  }
  fill(255);
  textSize(150);
  text("ACHIEVEMENTS", width/2 - 550, 250);
}
