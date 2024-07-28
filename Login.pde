//first screen that is displayed after running the sketch, for logging in 
void loginPage() {
  background(0);
  PFont font;
  font = loadFont("FelixTitlingMT-48.vlw");
  fill(255);
  textFont(font, 200);
  text("INSOMNIA", width/2 - 500, 250);
  text("INSOMNIA", width/2 - 500, 250);

  //displaying the box space where the player enters their username
  fill(#501313);
  rect(width/2 - 500, height/2 + 60, 1000, 75);
  fill(255);
  textSize(100);
  text("Enter your username:", width/2 - 625, height/2 + 25);
  textSize(75);
  text(username, width/2 - 500, height/2 + 122);
  usernameInput();
}

//controls the inputs of the player and displays accordingly
void usernameInput() {
  if ((keyPressed) && username.length() > 0 && key == BACKSPACE) {
    username = username.substring(0, username.length() - 1);
  } else if (key == ENTER && username.length() < 2) {
    textAlign(CENTER, CENTER);
    textSize(25);
    text("Please enter a username at least two characters long", width/2, 700);
    textAlign(BASELINE);
  } else if (key == ENTER && username.length() >= 2) {
    //if their username is found in the file, they will be logged in with their data
    if (checkUsername()) {
      index = 0;
      login();
    } else { //if their username is not found, they will start with a fresh username
      System.out.println("ah");
      signin();
    }
    page = "Menu";
  }
}

void keyTyped() {
  
  //Displaying what the user types in the login screen
  if (page == "Login" && username.length() <= 12) {
    if ((key >= 'A' && key <= 'z') || (key >= '0' && key <= '9')) {
      letter = key;
      username = username + letter;
    }  
    
  //Object interactions in the game
  } else if (page == "Play") {
    //Changing the speed if the player chooses to sprint
    if (key == 'c' && sprintOn == false) {
      speed = 15;
      sprintOn = true;
    } else if (key == 'c' && sprintOn == true) {
      speed = 9;
      sprintOn = false;
    }
    //controlling the light switch
    if (dist(camXPos, camYPos, camZPos, 125, 120, -175) <= 182.5) {
      if (key == 'e' && lightsOn == false && animation == false) {
        lightsOn = true;
        lightsNum++;
      } else if (key == 'e' && lightsOn == true && animation == false) {
        lightsOn = false;
      }
      //moving the chair
    } else if (dist(camXPos, camYPos, camZPos, 100, 225, 650) <= 200 && key == 'e' && chairMoved == false) {
        chairZPos = 225;
        chairXPos = 100;
        chairMoved = true;
    } else if (dist(camXPos, camYPos, camZPos, 350, 225, 550) <= 200 && key == 'e' && chairMoved == true) {
        chairZPos = 0;
        chairXPos = 0;
        chairMoved = false;
        //taking the lid off of the crate
    } else if (dist(camXPos, camYPos, camZPos, crateLidX, crateLidY, -100) <= 275) {
      if (key == 'e' && crateLidOff == false) {
        crateLidX = 625;
        crateLidY = 320;
        crateLidOff = true;
      } else if (key == 'e' && crateLidOff == true) {
        crateLidX = 400;
        crateLidY = 240;
        crateLidOff = false;
      }
      //highlighting the selected desk drawer compartments
    } else if (dist(camXPos, camYPos, camZPos, 0, 220, 635) <= 175 && chairMoved == true) {
      if (key == 'q' && ddrawChoice == "Top") {
        ddrawHighlightM = 150;
        ddrawHighlightT = 225;
        ddrawChoice = "Middle";
      } else if (key == 'q' && ddrawChoice == "Middle") {
        ddrawHighlightB = 150;
        ddrawHighlightM = 225;
        ddrawChoice = "Bottom";
      } else if (key == 'q' && ddrawChoice == "Bottom") {
        ddrawHighlightT = 150;
        ddrawHighlightB = 225;
        ddrawChoice = "Top";
        //opening the desk drawer compartments if the corresponding drawer compartment is selected
      } else if (key == 'e' && ddrawChoice == "Top" && topDDrawOut == false) {
        ddrawXPosT = 50;
        topDDrawOut = true;
      } else if (key == 'e' && ddrawChoice == "Top" && topDDrawOut == true) {
        ddrawXPosT = 0;
        topDDrawOut = false;
      } else if (key == 'e' && ddrawChoice == "Middle" && midDDrawOut == false) {
        ddrawXPosM = 50;
        midDDrawOut = true;
      } else if (key == 'e' && ddrawChoice == "Middle" && midDDrawOut == true) {
        ddrawXPosM = 0;
        midDDrawOut = false;
      } else if (key == 'e' && ddrawChoice == "Bottom" && botDDrawOut == false) {
        ddrawXPosB = 50;
        botDDrawOut = true;
      } else if (key == 'e' && ddrawChoice == "Bottom" && botDDrawOut == true) {
        ddrawXPosB = 0;
        botDDrawOut = false;
      } 
      //pulling curtains interaction
    } else if (dist(camXPos, camYPos, camZPos, 425, 75, 960) <= 250) {
      if (key == 'e' && curtainMoved == false) {
        curtainXPos = 50;
        curtainMoved = true;
      } else if (key == 'e' && curtainMoved == true) {
        curtainXPos = 0;
        curtainMoved = false;
      }
      //highlights the selected drawer compartment
    } else if (dist(camXPos, camYPos, camZPos, 842.5, 240, 150) <= 250 && inStaticCam == false) {
      if (key == 'q' && drawChoice == "Top") {
        drawHighlightM = 150;
        drawHighlightT = 225;
        drawChoice = "Middle";
      } else if (key == 'q' && drawChoice == "Middle") {
        drawHighlightB = 150;
        drawHighlightM = 225;
        drawChoice = "Bottom";
      } else if (key == 'q' && drawChoice == "Bottom") {
        drawHighlightT = 150;
        drawHighlightB = 225;
        drawChoice = "Top";
        //opens and closes the selected drawer compartment, and moves the clothes within them if they are found 
      } else if (key == 'e' && drawChoice == "Top" && topDrawOut == false) {
        drawXPosT = 50;
        topDrawOut = true;
        if (undFIn3 == true) {
          und3XPos = 10;
        } 
        if (undFIn2 == true) {
          und2XPos = 10;
        } 
        if (undFIn1 == true) {
          und1XPos = 10;
        } 
      } else if (key == 'e' && drawChoice == "Top" && topDrawOut == true) {
        drawXPosT = 0;
        topDrawOut = false;
        if (undFIn3 == true) {
          und3XPos = 60;
        } 
        if (undFIn2 == true) {
          und2XPos = 60;
        } 
        if (undFIn1 == true) {
          und1XPos = 60;
        } 
      } else if (key == 'e' && drawChoice == "Middle" && midDrawOut == false) {
        drawXPosM = 50;
        midDrawOut = true;
        if (shirFIn3 == true) {
          shir3XPos = 35;
        } 
        if (shirFIn2 == true) {
          shir2XPos = 35;
        } 
        if (shirFIn1 == true) {
          shir1XPos = 35;
        } 
      } else if (key == 'e' && drawChoice == "Middle" && midDrawOut == true) {
        drawXPosM = 0;
        midDrawOut = false;
        if (shirFIn3 == true) {
          shir3XPos = 85;
        } 
        if (shirFIn2 == true) {
          shir2XPos = 85;
        } 
        if (shirFIn1 == true) {
          shir1XPos = 85;
        } 
      } else if (key == 'e' && drawChoice == "Bottom" && botDrawOut == false && botDrawUnlocked == true) {
        drawXPosB = 50;
        botDrawOut = true;
      } else if (key == 'e' && drawChoice == "Bottom" && botDrawOut == true && botDrawUnlocked == true) {
        drawXPosB = 0;
        botDrawOut = false;
      } 
      //moving the plant
    } else if (key == 'e' && dist(camXPos, camYPos, camZPos, -85, 285, 520) <= 225 && plantMoved == false) {
      plantZPos = 75;
      plantMoved = true;
      //looking inside the vent
    } else if (key == 'f' && dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200 && ventMoved == true && inStaticCam == false) {
      inStaticCam = true;
      staticCamXPos = -175;
      staticCamYPos = 210;
      staticCamZPos = 250;
      cameraEnabled = false;
      //getting back up to the original camera position from the looking in the vent position
    } else if (key == 'q' && inStaticCam == true && ventMoved == true && dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200) {
      inStaticCam = false;
      cameraEnabled = true;
      //get up from hiding under the bed, sitting in the chair, or stop reading the note
    } else if (key == 'q' && inStaticCam == true && (firstBedInteraction == true || inChair == true || reading == true) && animation == false) {
      inStaticCam = false;
      cameraEnabled = true;
      inChair = false;
      reading = false;
      hideBedYPos = 0;
      drawNoteHide = 0;
      hiding = false;
      if (animalPlaced == true) {
        animalYPos = 130;
      }
      //to change perspectives and to the camera position of hiding under the bed
    } else if (key == 'f' && dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && inStaticCam == false && firstBedInteraction == true && animation == false) {
      inStaticCam = true;
      staticCamXPos = 865;
      staticCamYPos = 290;
      staticCamZPos = 710;
      hideBedYPos = 35;
      hiding = true;
      cameraEnabled = false;
      if (animalPlaced == true) {
        animalYPos = 175;
      }
      //records the number of times the player hides under the bed for the hide and seek achievement
      hideNum++;
      //sit in the chair interaction
    } else if (key == 'f' && dist(camXPos, camYPos, camZPos, 100, 220, 835) <= 200 && chairMoved == false && inStaticCam == false && inChair == false && animation == false) {
      inStaticCam = true;
      staticCamXPos = 100;
      staticCamYPos = 110;
      staticCamZPos = 745;
      cameraEnabled = false;
      inChair = true;
      //checking under the bed interaction, when the jumpscare has not happened yet
    } else if (key == 'f' && dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && inStaticCam == false && firstBedInteraction == false && animation == false) {
      inStaticCam = true;
      staticCamXPos = 625;
      staticCamYPos = 245;
      staticCamZPos = 710; 
      hideBedYPos = 35;
      cameraEnabled = false;
      if (animalPlaced == true) {
        animalYPos = 175;
      }
      //plays jumpscare sound effect
      if (firstBedInteraction == false) {
        if (jumpSoundNum == 0) {
          jumpFile.play();
          jumpSoundNum++;
          lightsOn = false;
        }
      }
    }
   //open the closet door if it's unlocked
   if (key == 'r' && dist(camXPos, camYPos, camZPos, 802.5, 240, -100) <= 250 && inStaticCam == false && closDoorUnlocked == true && closDoorOpen == false) {
      closDoorRotation = PI/2;
      closDoorXPos = 720;
      closDoorZPos = 1095;
      closDoorOpen = true;
      //plays jumpscare sound effect and the jumpscare if it has not happened yet
      if (firstClosetInteraction == false) {
        if (jumpSoundNum == 0) {
          jumpFile.play();
          jumpSoundNum++;
          lightsOn = false;
        }
        inStaticCam = true; //780, 125, -120
        staticCamXPos = 810;
        staticCamYPos = 100;
        staticCamZPos = -120; 
        cameraEnabled = false;
      }
      //close the closet door
    } else if (key == 'r' && dist(camXPos, camYPos, camZPos, 802.5, 240, -100) <= 250 && inStaticCam == false && closDoorUnlocked == true && closDoorOpen == true && firstClosetInteraction == true) {
      closDoorRotation = 0;
      closDoorXPos = 0;
      closDoorZPos = 0;
      closDoorOpen = false;
      closJumpZPos = 500;
      //opening and closing the bedroom door that leads to the hallway
    } else if (key == 'r' && dist(camXPos, camYPos, camZPos, -25, 120, -175) <= 200 && bedrDoorOpen == false) {
      bedrDoorRotation = -PI/2;
      bedrDoorXPos = 75;
      bedrDoorZPos = 320;
      bedrDoorOpen = true;
    } else if (key == 'r' && dist(camXPos, camYPos, camZPos, -25, 120, -175) <= 200 && bedrDoorOpen == true) {
      bedrDoorRotation = 0;
      bedrDoorXPos = 0;
      bedrDoorZPos = 0;
      bedrDoorOpen = false;
      //if the hallway jumpscare has occurred, and the player closes the door, the monster will return back to its original position, disappearing from the hallway
      if (bedrJump == true) {
        closJumpXPos = 0;
        closJumpZPos = 0;
        doorSoundNum = 0;
      }
    }
    //if the player has accomplished all the tasks and presses f to sleep, the page will change to the winning screen
    if (key == 'f' && dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && tasksDone == true && chase == false) {
      page = "Win";
      cameraEnabled = false;
      runningTimer = false;
      gameOver = true;
      resetCam = true;
      beatGame = true;
      strBeatGame = "True";
    }
    //if the player presses r to skip the animation, the camera position will be changed and the camera transformations will be enabled
    if (key == 'r' && animation == true) {
      notifFile.stop();
      keyboardFile.stop();
      timer.startTimer();
      cameraEnabled = true;
      animation = false;
      lightsOn = false;
    }
  } 
}
