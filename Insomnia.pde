/*
* This game is a 3D first person horror game called Insomnia that involves puzzle solving. It revolves around the character being trapped in the bedroom
* and being unable to fall asleep. They have until 3 AM to finish their tasks posted on the to-do list before their mother comes to check up on them if 
* they are asleep. 
*
* @since   2024-01-18
* @version 1.0
* @author  Richard Li
*/

//imports the sound library from processing
import processing.sound.*;

//variables to store sound files, current page, username entered, etc
SoundFile jumpFile, creakDoor, chaseFile, winFile, loseFile, knockFile, openDoorFile, keyboardFile, notifFile;
String page = "Login";
int delay = 50;
char letter;
String username = "";
int jumpSoundNum = 0;
int doorSoundNum = 0;
int winLoseNum = 0;
int chaseSoundNum = 0;
int laptopSoundNum = 0;
boolean jumpPaused, creakPaused, chasePaused, knockPaused, openDoorPaused, keyboardPaused, notifPaused;

void setup() {
  
  //fullscreen allows the sketch to be displayed over the entire screen
  //fullScreen(P3D);
  //size of 3D sketch reduced to 1920x1080
  size(1920, 1080, P3D);
  noStroke();
  frameRate(30);
  
  //sound variables assigned
  jumpFile = new SoundFile(this, "halloween-impact-05-93808.mp3");
  creakDoor = new SoundFile(this, "creaky_door_3.mp3");
  chaseFile = new SoundFile(this, "chase-music.mp3");
  winFile = new SoundFile(this, "rising-choir-140883.mp3");
  loseFile = new SoundFile(this, "entitychasesound.mp3");
  knockFile = new SoundFile(this, "door-knocking-175163.mp3");
  openDoorFile = new SoundFile(this, "close-123784.mp3");
  keyboardFile = new SoundFile(this, "quick-mechanical-keyboard-14391.mp3");
  notifFile = new SoundFile(this, "notifications-sound-127856.mp3");
}

void draw() {
  background(0);
  //corresponds the current page to the function for that page
  if (page == "Login") {
    loginPage();
  } else if (page == "Menu") {
    menu();
  } else if (page == "Play") {
    play();
  } else if (page == "Lose") {
    lose();
  } else if (page == "Win") {
    win();
  } else if (page == "Pause Menu") {
    pauseMenu();
  } else if (page == "Achievements") {
    achievementsPage();
  } else if (page == "Instructions" || page == "Pause Instructions") {
    instructionsPage();
  } else if (page == "Exit") {
    exitPage();
  } else if (page == "Thanks") {
    thanks();
    
    //ensures that the jumpscare remains on the screen for some time before the sketch is exited from
    if (delay == 0) {
      exit();
    } else {
      delay--;
    }
  }
}

void mousePressed() {
  
  //checks whenever the player clicks on a button, ensures that the sound does not carry over or is unpaused
  if (page == "Menu" && mouseX > 300 && mouseX < 300 + 200 && mouseY > 445 - 55 && mouseY < 445 + 10) {
    page = "Play";
    if (gameOver == false && timePaused == false) {
      timer.startTimer();
    } else if (timePaused == true && animation == false) {
      startTime = millis();
      runningTimer = true;
      timePaused = false;
      if (jumpPaused == true) {
        jumpFile.play();
        jumpPaused = false;
      }
      if (creakPaused == true) {
        creakDoor.play();    
        creakPaused = false;
      }
      if (chasePaused == true) {
        chaseFile.play();
        chasePaused = false;
      }
      if (knockPaused == true) {
        knockFile.play();
        knockPaused = false;
      }
      if (openDoorPaused == true) {
        openDoorFile.play();
        openDoorPaused = false;
      }
    } else if (timePaused == true && animation == true) {
      startTime = millis();
      runningTimer = true;
      timePaused = false;
      if (keyboardPaused == true) {
        keyboardFile.play();
        keyboardPaused = false;
      }
      if (notifPaused == true) {
        notifFile.play();
        notifPaused = false;
      }
    }
  } else if (page == "Menu" && mouseX > 300 && mouseX < 300 + 500 && mouseY > 545 - 55 && mouseY < 545 + 10) {
    page = "Achievements";
  } else if (page == "Menu" && mouseX > 300 && mouseX < 300 + 500 && mouseY > 645 - 55 && mouseY < 645 + 10) {
    page = "Instructions";
  } else if (page == "Menu" && mouseX > 300 && mouseX < 300 + 300 && mouseY > 745 - 55 && mouseY < 745 + 10) {
    username = "";
    page = "Login";
  } else if (page == "Menu" && mouseX > 300 && mouseX < 300 + 200 && mouseY > 845 - 55 && mouseY < 845 + 10) {
    page = "Exit";
  } else if ((page == "Achievements" || page == "Instructions") && mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    page = "Menu";
  } else if (page == "Pause Instructions" && mouseX > 50 && mouseX < 50 + 200 && mouseY > height - 155 && mouseY < height - 90) {
    page = "Pause Menu";
  } else if (page == "Exit" && mouseX > 770 && mouseX < 770 + 125 && mouseY > 540 && mouseY < 540 + 75) {
    if (savedData == false) {
      //saveData();
    }
    page = "Thanks";
  } else if (page == "Exit" && mouseX > 1070 && mouseX < 1070 + 125 && mouseY > 540 && mouseY < 540 + 75) {
    page = "Menu";
  }
}
