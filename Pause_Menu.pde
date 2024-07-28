//for the screen when the player pauses the game
void pauseMenu() {
  background(0);
  //when the player pauses the game, the timer pauses 
  if (timePaused == false) {
    stopTime += timeElapsed;
    runningTimer = false;
    timePaused = true;
  }
  //all monsters stop moving
  entityX += 0;
  entityZ += 0;
  motherX += 0;
  motherZ += 0;
  //if these sounds are still playing, pause them
  if (jumpFile.isPlaying()) {
    jumpFile.pause();
    jumpPaused = true;
  }
  if (creakDoor.isPlaying()) {
    creakDoor.pause();
    creakPaused = true;
  }
  if (chaseFile.isPlaying()) {
    chaseFile.pause();
    chasePaused = true;
  }
  if (knockFile.isPlaying()) {
    knockFile.pause();
    knockPaused = true;
  }
  if (openDoorFile.isPlaying()) {
    openDoorFile.pause();
    openDoorPaused = true;
  }
  if (keyboardFile.isPlaying()) {
    keyboardFile.pause();
    keyboardPaused = true;
  }
  if (notifFile.isPlaying()) {
    notifFile.pause();
    notifPaused = true;
  }
  //return to the default camera position so that the text of the pause menu can be seen
  camera();
  cursor(); //enable a cursor
  PFont font;
  font = loadFont("FelixTitlingMT-48.vlw");
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Game Paused", 960, 175);
  fill(#501313);
  rect(760, 390, 400, 70);
  rect(760, 540, 400, 70);
  rect(760, 690, 400, 70);
  textSize(45);
  fill(255);
  text("Resume Game", 960, 425);
  text("Instructions", 960, 575);
  text("Save & Quit", 960, 725);
  //when the player resumes the game, all paused sounds begin again, and the timer starts up again
  if (mouseX > 760 && mouseX < 760 + 400 && mouseY > 390 && mouseY < 390 + 70) {
    fill(54, 51, 51);
    text("Resume Game", 960, 425);
    textAlign(BASELINE);
    if (mousePressed && mouseButton == LEFT) {
      page = "Play";
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
      if (keyboardPaused == true) {
        keyboardFile.play();
        keyboardPaused = false;
      }
      if (notifPaused == true) {
        notifFile.play();
        notifPaused = false;
      }
    }
    //when the player clicks on the instructions button, the game brings the player to the pause instructions page, where if they click on the back button,
    //they are redirected back to the pause menu
  } else if (mouseX > 760 && mouseX < 760 + 400 && mouseY > 540 && mouseY < 540 + 70) {
    fill(54, 51, 51);
    text("Instructions", 960, 575);
    textAlign(BASELINE);
    if (mousePressed && mouseButton == LEFT) {
      page = "Pause Instructions";
    }
    //when the player clicks on the save and quit button, they are redirected to the main menu
  } else if (mouseX > 760 && mouseX < 760 + 400 && mouseY > 690 && mouseY < 690 + 70) {
    fill(54, 51, 51);
    text("Save & Quit", 960, 725);
    textAlign(BASELINE);
    if (mousePressed && mouseButton == LEFT) {
      //data is saved 
      //saveData();
      page = "Menu";
      jumpSoundNum = 0;
      doorSoundNum = 0;
      chaseSoundNum = 0;
    }
  }
}

void keyPressed () {
  //if the player presses ESC in-game, they are redirected to the pause menu and vice versa
  if (page == "Play" && key == ESC) {
    key = 0;
    page = "Pause Menu";
  } else if (page == "Pause Menu" && key == ESC) {
    key = 0;
    page = "Play";
    startTime = millis(); //the timer starts up again
    runningTimer = true;
    timePaused = false;
  }
}
