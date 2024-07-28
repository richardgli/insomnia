// Creates a new camera
firstPersonCamera mainCamera = new firstPersonCamera();
boolean cameraEnabled = false; //disables camera transformations for the animation at the beginning of the game
clockTimer timer = new clockTimer();  //creates a new timer
int startTime; //the starting time at which the timer is started
int stopTime = 0; //the stopping time at which the timer is paused or stopped
boolean runningTimer = false; //the boolean variable that checks whether the timer is running or not
int timeElapsed; //for displaying the digital clock
int seconds;
int minutes;
int speed = 9; //capped speed of the player
boolean sprintOn = false; //checks if the player is currently sprinting
float camXPos = width/2; //default positions of the camera
float camYPos = height/2 + 50;
float camZPos = (height/2) / tan(PI*3 / 180);
float staticCamXPos = width/2; //default positions of the static camera position, where the player is unable to move but can look around
float staticCamYPos = height/2 + 50;
float staticCamZPos = (height/2) / tan(PI*3 / 180);
boolean inStaticCam = false; //checks if the player is currently in the static camera position
int ddrawHighlightT = 225; //highlight colours of the desk drawer compartments
int ddrawHighlightM = 225;
int ddrawHighlightB = 225;
float ddrawXPosT = 0; //moves the desk drawer compartments along the x-axis when they are opened/closed
float ddrawXPosM = 0;
float ddrawXPosB = 0;
String ddrawChoice = "Top"; //selected desk drawer compartment

int drawHighlightT = 225; //highlight colours of the drawer compartments
int drawHighlightM = 225;
int drawHighlightB = 225;
float drawXPosT = 0; //moves the drawer compartments along the x-axis when they are opened/closed
float drawXPosM = 0;
float drawXPosB = 0;
String drawChoice = "Top"; //selected drawer compartment

int ceilLightCol = 0; //ceiling light colour when the light is turned on or off
int windowCol; //window colour when the light is turned on or off
boolean lightsOn = true; //to check whether the lights are turned on or off
float lightRotation = -PI/4; //movement of the light switch if the lights are turned on or off
boolean chairMoved = false; //checking if the chair has moved
boolean crateLidOff = false; //checking if the crate lid is off
boolean topDDrawOut = false; //checks if the desk drawers are out
boolean midDDrawOut = false;
boolean botDDrawOut = false;
boolean topDrawOut = false; //checks if the drawers are out
boolean midDrawOut = false;
boolean botDrawOut = false;
boolean inChair = false; //checks if the player is in the chair
boolean plantMoved = false; //checks if the player has moved the plant
boolean animalMoved = false; //checksi f the stuffed animal has moved from its original position
boolean handsEmpty = true; //checks if the player has empty hands
String inventory = "Empty"; //the inventory of the player
boolean crowPickup = false; //checks if the player has picked up the crowbar
boolean ventMoved = false; //checks if the player has moved the vent
boolean animalPlaced = false; //checks if the player has placed the stuffed animal beside their pillow
boolean clothingStored = false; //checks if all the clothes have been stored in the desk drawer
boolean folding = false; //checks if the player is currently folding clothes
boolean undFIn3 = false; //checks if the underwear are in the drawer
boolean undFIn2 = false;
boolean undFIn1 = false;
boolean shirFIn3 = false; //checks if the shirts are in the drawer
boolean shirFIn2 = false;
boolean shirFIn1 = false;
boolean botDrawUnlocked = false; // checks if the bottom drawer is unlocked
boolean pillTaken = false; //checks if the pill has been taken
boolean closDoorOpen = false; //state of the closet door
boolean closDoorUnlocked = false;
boolean readDrawNote = false;
boolean pillowMoved = false;
boolean firstBedInteraction = false; //whether the bed jumpscare has happened or not
boolean hiding = false;
boolean firstClosetInteraction = false; //whether the closet jumpscare has happened or not
boolean bedrDoorOpen = false; //state of the bedroom door
boolean reading = false;
boolean bedrJump;
//the amount that the objects have to move during the interactions
float crateLidX = 400; 
float crateLidY = 240;
float chairZPos = 0;
float chairXPos = 0;
float plantZPos = 0;
int crowXPos = 0;
int crowYPos = 0;
int crowZPos = 0;
int crowShow = 0;
boolean curtainMoved = false;
int curtainXPos = 0;
int ventXPos = 0;
int ventYPos = 0;
int ventZPos = 0;
int animalXPos = 0;
int animalYPos = 0;
int animalZPos = 0;
int hideBedYPos = 0;
int undFHide3 = 0; //the clothes hide when they are folded up
int undFHide2 = 0;
int undFHide1 = 0;
int shirFHide3 = 0;
int shirFHide2 = 0;
int shirFHide1 = 0;
int undHide3 = 0; //the clothes hide when they are picked up
int undHide2 = 0;
int undHide1 = 0;
int shirHide3 = 0;
int shirHide2 = 0;
int shirHide1 = 0;
int undDraw3 = 0; //change in position when they are placed in the drawer
int undDraw2 = 0;
int undDraw1 = 0;
int shirDraw3 = 0;
int shirDraw2 = 0;
int shirDraw1 = 0;
int und3XPos = 0;
int und2XPos = 0;
int und1XPos = 0;
int shir3XPos = 0;
int shir2XPos = 0;
int shir1XPos = 0;
int drawKeyYPos = 0;
int closKeyYPos = 0;
int pillowKey = 0; 
float ventRotation = 0;
int pillColour = 0;
int drawNoteHide = 0;
float animalRotation = -PI/2;
String topClothing = "Underwear #3"; //current clothing that is at the top of the pile

//for the rotation of the doors
float closDoorRotation = 0;
int closDoorXPos = 0;
int closDoorZPos = 0;
int closJumpZPos = 0;
int closJumpXPos = 0;
int bedJumpXPos = 0;
int bedrDoorXPos = 0;
int bedrDoorZPos = 0;
float bedrDoorRotation = 0;

//for the chasing scenes
boolean chase = false;
boolean follow = false;
float entityX = 2000;
float entityZ = 2000;
int entityZIncr = 0;

boolean is3AM = false; //whether it is 3 AM or not
boolean is3AMChase = false; //whether the 3 AM chase of the mother is happening or not
float motherX = 300; //positions of the mother
float motherZ = -4000;
boolean tasksDone = false; //if all tasks are completed
boolean gameOver = false; //if the game is over
boolean resetCam = false; //if the camera has to be reset, usually after the player loses or wins
boolean timePaused = false; //if the time is paused
boolean animation = true; //if the animation is currently running
boolean typing = false;
boolean notifSound = false;

void play() {
  background(0);
  savedData = false;
  seconds = timer.numSeconds() + ((stopTime / 1000) % 60);
  minutes = timer.numMinutes() + ((stopTime / (1000 * 60)) % 60);
  
  //achievements
  if (lightsNum >= 10) {
    lightsAchievement = true;
    strLightsAchievement = "True";
  }
  if (hideNum >= 10) {
    hideAchievement = true;
    strHideAchievement = "True";
  }
  
  //beginning 
  if (animation == true) {
    noCursor();
    if (laptopSoundNum == 0 && typing == false) {
      keyboardFile.play();
      laptopSoundNum++;
      typing = true;
      startTime = millis();
    }
    if (seconds == 10) {
      laptopSoundNum = 0;
    }
    if (laptopSoundNum == 0 && notifSound == false) {
      notifFile.play();
      laptopSoundNum++;
      notifSound = true;
    }
    if (seconds < 16) { //sitting on chair
      camera(100, 110, 745, 0.06967, 228.88892, 1498.5894, 0, 1, 0);
    } else if (seconds < 25) { //looking at clock
      camera(43.5, 100, 701, -900, 362.2, 612, 0, 1, 0);
    } else if (seconds >= 25 && seconds < 28) { //closing laptop
      camera(100, 110, 745, 0.06967, 228.88892, 1498.5894, 0, 1, 0);
    } else if (seconds >= 28 && seconds < 30) { //turning off lights
      camera(127.7, 100, 27, 76.4, 221.1, -915, 0, 1, 0);
      if (seconds == 29) {
        lightsOn = false;
      }
    } else if (seconds >= 30 && seconds < 33) { //standing beside bed
      camera(595, 100, 735.2, 1538.1, 586.67, 761.37, 0, 1, 0);
    } else if (seconds >= 33 && seconds < 38) { //black screen
      camera(0, 0, 0, 0, 0, 0, 0, 1, 0);
    } else if (seconds >= 38 && seconds < 41) { //lying on bed
      camera(866.25, 125, 854.9, 574.12, 213.3, -42.17, 0, 1, 0);
    } else if (seconds >= 41 && seconds < 44) { //looking at clock from bed
      camera(270.65, 100, 741.2, -672.62, 303.33, 725.7, 0, 1, 0);
    } else if (seconds >= 44 && seconds < 54) { //looking at clock
      camera(43.5, 100, 701, -900, 362.2, 612, 0, 1, 0);
      fill(#FF0818);
      textSize(4);
      textAlign(CENTER, CENTER);
      pushMatrix();
      rotateY(PI/2);
      if (seconds >= 45 && seconds < 47) {
        text("Uh oh", -680, 100, -60);
      }
      if (seconds >= 47 && seconds< 50) {
        text("I got 10 minutes before Mother checks", -680, 100, -60);
      }
      if (seconds >= 50 && seconds < 54) {
        text("I have to rely on my to-do list to fall asleep now", -680, 100, -60);
      }
      popMatrix();
    } else if (seconds == 54) {
      mainCamera = new firstPersonCamera();
      timer.startTimer();
      cameraEnabled = true;
      animation = false;
    }
  }
  
  //reset variables when a new game is started
  if (gameOver == true && animation == false) {
    cameraEnabled = false;
    timer.startTimer();
    speed = 9;
    sprintOn = false;
    camXPos = width/2;
    camYPos = height/2 + 50;
    camZPos = (height/2) / tan(PI*3 / 180);
    staticCamXPos = width/2;
    staticCamYPos = height/2 + 50;
    staticCamZPos = (height/2) / tan(PI*3 / 180);
    inStaticCam = false;
    ddrawHighlightT = 225;
    ddrawHighlightM = 225;
    ddrawHighlightB = 225;
    ddrawXPosT = 0;
    ddrawXPosM = 0;
    ddrawXPosB = 0;
    drawChoice = "Top";
    drawHighlightT = 225;
    drawHighlightM = 225;
    drawHighlightB = 225;
    drawXPosT = 0;
    drawXPosM = 0;
    drawXPosB = 0;
    drawChoice = "Top";
    ceilLightCol = 0;
    lightsOn = true;
    lightRotation = -PI/4;
    chairMoved = false;
    crateLidOff = false;
    topDDrawOut = false;
    midDDrawOut = false;
    botDDrawOut = false;
    topDrawOut = false;
    midDrawOut = false;
    botDrawOut = false;
    inChair = false;
    plantMoved = false;
    animalMoved = false;
    handsEmpty = true;
    inventory = "Empty";
    crowPickup = false;
    ventMoved = false;
    animalPlaced = false;
    clothingStored = false;
    folding = false;
    undFIn3 = false;
    undFIn2 = false;
    undFIn1 = false;
    shirFIn3 = false;
    shirFIn2 = false;
    shirFIn1 = false;
    botDrawUnlocked = false;
    pillTaken = false;
    closDoorOpen = false;
    closDoorUnlocked = false;
    readDrawNote = false;
    pillowMoved = false;
    firstBedInteraction = false;
    hiding = false;
    firstClosetInteraction = false;
    bedrDoorOpen = false;
    reading = false;
    crateLidX = 400;
    crateLidY = 240;
    chairZPos = 0;
    chairXPos = 0;
    plantZPos = 0;
    crowXPos = 0;
    crowYPos = 0;
    crowZPos = 0;
    crowShow = 0;
    curtainMoved = false;
    curtainXPos = 0;
    ventXPos = 0;
    ventYPos = 0;
    ventZPos = 0;
    animalXPos = 0;
    animalYPos = 0;
    animalZPos = 0;
    hideBedYPos = 0;
    undFHide3 = 0;
    undFHide2 = 0;
    undFHide1 = 0;
    shirFHide3 = 0;
    shirFHide2 = 0;
    shirFHide1 = 0;
    undHide3 = 0;
    undHide2 = 0;
    undHide1 = 0;
    shirHide3 = 0;
    shirHide2 = 0;
    shirHide1 = 0;
    undDraw3 = 0;
    undDraw2 = 0;
    undDraw1 = 0;
    shirDraw3 = 0;
    shirDraw2 = 0;
    shirDraw1 = 0;
    und3XPos = 0;
    und2XPos = 0;
    und1XPos = 0;
    shir3XPos = 0;
    shir2XPos = 0;
    shir1XPos = 0;
    drawKeyYPos = 0;
    closKeyYPos = 0;
    pillowKey = 0;
    ventRotation = 0;
    pillColour = 0;
    drawNoteHide = 0;
    animalRotation = -PI/2;
    topClothing = "Underwear #3";
    closDoorRotation = 0;
    closDoorXPos = 0;
    closDoorZPos = 0;
    closJumpZPos = 0;
    closJumpXPos = 0;
    bedJumpXPos = 0;
    bedrDoorXPos = 0;
    bedrDoorZPos = 0;
    bedrDoorRotation = 0;
    chase = false;
    follow = false;
    entityX = 2000;
    entityZ = 2000;
    entityZIncr = 0;
    is3AM = false;
    tasksDone = false;
    gameOver = false;
    winLoseNum = 0;
    jumpSoundNum = 0;
    doorSoundNum = 0;
    chaseSoundNum = 0;
    laptopSoundNum = 0;
    motherX = 300;
    motherZ = -4000;
    stopTime = 0;
    animation = true;
    typing = false;
    notifSound = false;
    lightsNum = 0;
  }
  
  // Tells the program that boolean cameraEnabled controls camera transformations.
  if (cameraEnabled == true) {
    mainCamera.camTransformations();
  }
  
  //static camera position
  if (inStaticCam == true) {
    pushMatrix();
    translate(staticCamXPos, staticCamYPos, staticCamZPos);

    // Side to side movement
    rotateY(map(-mouseX, 0, width, 1000, 1010));
    translate(800, 0, 500);

    float x = modelX(0, 0, 0);
    float y = modelY(0, 0, 0);
    float z = modelZ(0, 0, 0);
    popMatrix();

    // Setting the range from 0 to the height to the range of -200 to 1000 for better camera up and down movement.
    y = map(mouseY, 0, height, -200, 1000);

    camera(staticCamXPos, staticCamYPos, staticCamZPos, x, y, z, 0, 1, 0);
  }
  
  //winning
  if (lightsOn == false && firstBedInteraction == true && firstClosetInteraction == true && animalPlaced == true && pillTaken == true && clothingStored == true && curtainMoved == true && is3AM == false) {
    tasksDone = true;
    if (dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && chase == false) {    
      fill(#0017FC);
      pushMatrix();
      textSize(15);
      textAlign(CENTER, CENTER);
      rotateY(-PI/2);
      text("Press F to sleep", 725, 210, -750);
      popMatrix();
    }
  }
  
  //jumpscares
  //closet jumpscare
  if (firstClosetInteraction == false && closDoorOpen == true) {
    closJumpZPos -= 5;
    if (closJumpZPos == -60) {
      inStaticCam = false;
      cameraEnabled = true;
      firstClosetInteraction = true;
      closDoorRotation = 0;
      closDoorXPos = 0;
      closDoorZPos = 0;
      closDoorOpen = false;
      jumpSoundNum = 0;
      closJumpZPos = 300;
    }
  }
  //bed jumpscare
  if (firstBedInteraction == false && inStaticCam == true && dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275) {
    bedJumpXPos -= 5;
    if (bedJumpXPos == -75) {
      inStaticCam = false;
      cameraEnabled = true;
      firstBedInteraction = true;
      jumpSoundNum = 0;
      bedJumpXPos = 300;
      hideBedYPos = 0;
      bedrJump = false;
      if (animalPlaced == true) {
        animalYPos = 130;
      }
    }
  }
  //chasing jumpscare
  if (chase == true) {
    bedrDoorRotation = -PI/2;
    bedrDoorXPos = 75;
    bedrDoorZPos = 320;
    bedrDoorOpen = true;
    lightsOn = false;
    if (doorSoundNum == 0) {
      creakDoor.play();
      chaseFile.play();
      doorSoundNum++;
    }
    if (entityZIncr < 5900 && follow == false) { //the entity moves on a straight line along the z-axis until it enters the bedroom
      entityZIncr += 15;
    } else if (entityZIncr >= 5900) { //which then it starts to follow the player
      follow = true;
      entityZ = -6000 + entityZIncr;
      entityZIncr = 0;
    }
    if (follow == true) { //positions of the entity change relative to the player position
      float dx = camXPos - entityX;
      float dz = camZPos - entityZ;
      entityX += dx * 0.03;
      entityZ += dz * 0.03;
      if (hiding == true) {
        entityZ += 0;
        entityX += 0;
      }
    }
    if (seconds == 25) { //the chase stops after an amount of time
      entityX = -2000;
      entityZ = -2000;
      doorSoundNum = 0;
      chase = false;
      follow = false;
      lightsOn = true;
      chaseFile.stop();
    }
    if (hiding == false && dist(camXPos, camYPos, camZPos, entityX, 100, entityZ) <= 250) { //if the player is caught, they lose
      page = "Lose";
      chaseFile.stop();
      doorSoundNum = 0;
      cameraEnabled = false;
      runningTimer = false;
      gameOver = true;
      resetCam = true;
      if (winLoseNum == 0) {
        loseFile.play();
        winLoseNum++;
      }
    }
  }
  //when the timer reaches 3 AM, the mother scenario starts
  if (is3AM == true) {
    inStaticCam = true;
    staticCamXPos = camXPos;
    staticCamYPos = camYPos;
    staticCamZPos = camZPos; 
    cameraEnabled = false;
    bedrDoorRotation = -PI/2;
    bedrDoorXPos = 75;
    bedrDoorZPos = 320;
    bedrDoorOpen = true;
    if (minutes == 10 && seconds == 5) {
      is3AMChase = true;
    }
    if (is3AMChase == true) { // the mother's positions change relative to the player's position 
      float dx = camXPos - motherX;
      float dz = camZPos - motherZ;
      motherX += dx * 0.05;
      motherZ += dz * 0.05;
    }
    if (dist(camXPos, camYPos, camZPos, motherX, 100, motherZ) <= 250) { //when the mother reaches the player, losing screen is displayed
      page = "Lose";
      runningTimer = false;
      gameOver = true;
      resetCam = true;
      inStaticCam = false;
      is3AMChase = false;
      if (winLoseNum == 0) {
        loseFile.play();
        winLoseNum++;
      }
    }
  }
  
  //in-game interactions
  //turning lights on and off
  if (lightsOn == true) {
    ambientLight(150, 150, 150);
    pointLight(44, 40, 31, 400, -1000, 400);
    lightRotation = PI/4;
    ceilLightCol = 3;
    windowCol = 30;
  } else {
    ambientLight(25, 25, 25);
    lightRotation = -PI/4;
    windowCol = 255;
  }
//moving the curtains
  if (curtainMoved == false) {
    pointLight(15, 15, 15, 425, 100, 960);
  }
//picking up the crowbar and the crowbar disappears
  if (crowPickup == true) {
    crowYPos = 2000;
  }
//render the environment of the game
  renderEnvironment();

  //for light switch interaction
  if (dist(camXPos, camYPos, camZPos, 125, 120, -175) <= 182.5 && chase == false && animation == false) {
    fill(255);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Press E to turn on/off", 125, 80, -135);
  }

  //for chair interaction
  if (dist(camXPos, camYPos, camZPos, 100, 225, 650) <= 200 && chairMoved == false) {
    fill(0);
    pushMatrix();
    textSize(10);
    rotateY(PI/1.5);
    textAlign(CENTER, CENTER);
    text("Press E to move", -650, 100, -250);
    popMatrix();
  } else if (dist(camXPos, camYPos, camZPos, 350, 225, 550) <= 200 && chairMoved == true) {
    fill(0);
    pushMatrix();
    textSize(10);
    rotateY(PI/1.25);
    textAlign(CENTER, CENTER);
    text("Press E to move", -600, 100, -300);
    popMatrix();
  }

  //for crate lid interaction
  if (dist(camXPos, camYPos, camZPos, crateLidX, crateLidY, -100) <= 275) {
    fill(255);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Press E to interact", crateLidX, 150, -100);
  }
  
  //sitting on desk chair
  if (dist(camXPos, camYPos, camZPos, 100, 220, 835) <= 200 && chairMoved == false && inStaticCam == false && inChair == false && animation == false) {
    fill(0);
    pushMatrix();
    textSize(7);
    textAlign(CENTER, CENTER);
    rotateY(PI);
    text("Press F to sit", -120, 100, -850);
    popMatrix();
  }
  
  //sleeping pills interaction
  if (dist(camXPos, camYPos, camZPos, 100, 220, 835) <= 200 && inStaticCam == true && inChair == true && animation == false) {
    fill(0);
    pushMatrix();
    textSize(7);
    textAlign(CENTER, CENTER);
    rotateY(PI);
    text("Press Q to stand up", -120, 100, -880);
    popMatrix();
    if (pillTaken == false) {
      pushMatrix();
      textSize(5);
      textAlign(CENTER, CENTER);
      rotateY(PI/2);
      text("Right-click to take sleeping pill", -760, 155, -50);
      popMatrix();
      if (mousePressed && mouseButton == RIGHT) {
        pillTaken = true;
        pillColour = 5;
      }
    }
  }
  
  //for desk drawer interaction
  if (dist(camXPos, camYPos, camZPos, 0, 220, 635) <= 175 && chairMoved == true) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Press E to open/close", -635, 155, -25);
    text("Press Q to alternate drawer compartments", -650, 170, -25);
    popMatrix();
  } else {
    ddrawHighlightT = 225;
    ddrawHighlightM = 225;
    ddrawHighlightB = 225;
  }

  //for curtain interaction
  if (dist(camXPos, camYPos, camZPos, 425, 75, 960) <= 250) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI);
    text("Press E to open/close", -420, 100, -900);
    popMatrix();
  }

  //for drawer interaction
  if (dist(camXPos, camYPos, camZPos, 842.5, 240, 150) <= 250 && inStaticCam == false) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Press E to open/close", 150, 180, -850);
    text("Press Q to alternate drawer compartments", 150, 190, -850);
    if (drawChoice == "Bottom" && botDrawUnlocked == false && inventory != "Drawer Key") {
      text("Locked", 150, 210, -850);
    }
    popMatrix();
  } else {
    drawHighlightT = 225;
    drawHighlightM = 225;
    drawHighlightB = 225;
  }

  //for plant interaction
  if (dist(camXPos, camYPos, camZPos, -85, 285, 520) <= 225 && plantMoved == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Press E to move", -500, 155, -150);
    popMatrix();
  } else if (dist(camXPos, camYPos, camZPos, -65, 285, 510) <= 205 && plantMoved == true && crowPickup == false && handsEmpty == true && animalPlaced == false) {
    fill(0);
    pushMatrix();
    textSize(4);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Right-click to pick up crowbar", -525, 230, -150);
    popMatrix();
    crowShow = 50;
  } else {
    crowShow = 0;
  }

  //for crowbar pickup interaction
  if (mousePressed && mouseButton == RIGHT && dist(camXPos, camYPos, camZPos, -65, 285, 510) <= 205 && plantMoved == true && crowPickup == false && handsEmpty == true & animalPlaced == false) {
    crowPickup = true;
    handsEmpty = false;
    inventory = "Crowbar";
  }

  //for vent interaction
  if (dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200 && crowPickup == false && handsEmpty == true && animalMoved == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Crowbar required", -250, 170, -150);
    popMatrix();
  } else if (mousePressed && mouseButton == LEFT && dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200 && ventMoved == false && crowPickup == true && handsEmpty == false && inventory == "Crowbar") {
    ventRotation = -PI/2;
    ventXPos = 160;
    ventYPos = 345;
    ventZPos = 125;
    ventMoved = true;
  }

  //opening vent
  if (dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200 && inventory == "Crowbar" && handsEmpty == false && ventMoved == false && crowPickup == true && handsEmpty == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Left-click to open", -250, 170, -150);
    popMatrix();
  }

  //look in vent text
  if (dist(camXPos, camYPos, camZPos, -172.5, 195, 250) <= 200 && ventMoved == true) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Press F to look", -250, 170, -150);
    popMatrix();
  }

  //pick up stuffed animal text
  if (inStaticCam == true && ventMoved == true) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);      
    text("Press Q to get back up", -225, 250, -270);
    if (animalMoved == false) {
      text("Right-click to pickup", -225, 260, -270);
      popMatrix();
    }
  }

  //pick up stuffed animal and drop crowbar
  if (mousePressed && mouseButton == RIGHT && inStaticCam == true && ventMoved == true && animalMoved == false && inventory == "Crowbar") {
    animalMoved = true;
    animalYPos = 1000;
    crowPickup = false;
    inventory = "Stuffed Animal";
    crowXPos = 105;
    crowYPos = 50;
    crowZPos = 400;
    handsEmpty = false;
  }

  if (inStaticCam == false && inventory == "Stuffed Animal") {
    ventXPos = 0;
    ventYPos = 0;
    ventZPos = 0;
    ventRotation = 0;
    ventMoved = false;
  }

  //place stuffed animal beside pillow text
  if (dist(camXPos, camYPos, camZPos, 820, 260, 920) <= 275 && inventory == "Stuffed Animal" && animalPlaced == false && inStaticCam == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Left-click to place stuffed animal", 865, 180, -750);
    popMatrix();
    //place stuffed animal beside pillow
    if (mousePressed && mouseButton == LEFT) {
      animalXPos = 540;
      animalYPos = 130;
      animalZPos = 640;
      animalRotation = 0;
      animalPlaced = true;
      handsEmpty = true;
    }
  }

  //hide under the bed
  if (dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && inStaticCam == false && firstBedInteraction == true && tasksDone == false && animation == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Press F to hide", 725, 210, -750);
    popMatrix();
  } else if (inStaticCam == true && hiding == true && firstBedInteraction == true && animation == false) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("Press Q to get up", -650, 310, 750);
    popMatrix();
  }

  //fold clothing
  if (dist(camXPos, camYPos, camZPos, 780, 270, 630) <= 250 && clothingStored == false && folding == false && handsEmpty == true && inStaticCam == false && animation == false) {
    fill(0);
    pushMatrix();
    textSize(4);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Left-click to fold", 550, 210, -750);
    popMatrix();
    if (mousePressed && mouseButton == LEFT && topClothing == "Underwear #3") {
      undFHide3 = 1000;
      undHide3 = 1000;
      folding = true;
    } else if (mousePressed && mouseButton == LEFT && topClothing == "Underwear #2") {
      undFHide2 = 1000;
      undHide2 = 1000;
      folding = true;
    } else if (mousePressed && mouseButton == LEFT && topClothing == "Underwear #1") {
      undFHide1 = 1000;
      undHide1 = 1000;
      folding = true;
    } else if (mousePressed && mouseButton == LEFT && topClothing == "Shirt #3") {
      shirFHide3 = 1000;
      shirHide3 = 1000;
      folding = true;
    } else if (mousePressed && mouseButton == LEFT && topClothing == "Shirt #2") {
      shirFHide2 = 1000;
      shirHide2 = 1000;
      folding = true;
    } else if (mousePressed && mouseButton == LEFT && topClothing == "Shirt #1") {
      shirFHide1 = 1000;
      shirHide1 = 1000;
      folding = true;
    }
  }

  //pick up clothing
  if (dist(camXPos, camYPos, camZPos, 780, 270, 655) <= 225 && clothingStored == false && folding == true && handsEmpty == true && inStaticCam == false) {
    fill(0);
    pushMatrix();
    textSize(3);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Right-click to pick up", 675, 230, -750);
    popMatrix();
    if (mousePressed && mouseButton == RIGHT && topClothing == "Underwear #3") {
      undFHide3 = 2000;
      handsEmpty = false;
      inventory = "Underwear #3";
    } else if (mousePressed && mouseButton == RIGHT && topClothing == "Underwear #2") {
      undFHide2 = 2000;
      handsEmpty = false;
      inventory = "Underwear #2";
    } else if (mousePressed && mouseButton == RIGHT && topClothing == "Underwear #1") {
      undFHide1 = 2000;
      handsEmpty = false;
      inventory = "Underwear #1";
    } else if (mousePressed && mouseButton == RIGHT && topClothing == "Shirt #3") {
      shirFHide3 = 2000;
      handsEmpty = false;
      inventory = "Shirt #3";
    } else if (mousePressed && mouseButton == RIGHT && topClothing == "Shirt #2") {
      shirFHide2 = 2000;
      handsEmpty = false;
      inventory = "Shirt #2";
    } else if (mousePressed && mouseButton == RIGHT && topClothing == "Shirt #1") {
      shirFHide1 = 2000;
      handsEmpty = false;
      inventory = "Shirt #1";
    }
  }

  //put clothes in drawer
  if (dist(camXPos, camYPos, camZPos, 842.5, 240, 150) <= 250 && folding == true && clothingStored == false && handsEmpty == false) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    if (undFIn3 == true && undFIn2 == true && undFIn1 == true && (inventory == "Shirt #3" || inventory == "Shirt #2" || inventory == "Shirt #1")) {
      text("Right-click to put in middle compartment", 150, 200, -850);
    } else if (inventory == "Underwear #3" || inventory == "Underwear #2" || inventory == "Underwear #1") {
      text("Right-click to put in first compartment", 150, 200, -850);
    }
    popMatrix();
    if (mousePressed && mouseButton == RIGHT && topDrawOut == true && inventory == "Underwear #3") {
      undDraw3 = 600;
      und3XPos = 10;
      undFHide3 = 1015;
      handsEmpty = true;
      folding = false;
      undFIn3 = true;
      topClothing = "Underwear #2";
    } else if (mousePressed && mouseButton == RIGHT && topDrawOut == true && inventory == "Underwear #2") {
      undDraw2 = 570;
      und2XPos = 10;
      undFHide2 = 1015;
      handsEmpty = true;
      folding = false;
      undFIn2 = true;
      topClothing = "Underwear #1";
    } else if (mousePressed && mouseButton == RIGHT && topDrawOut == true && inventory == "Underwear #1") {
      undDraw1 = 540;
      und1XPos = 10;
      undFHide1 = 1015;
      handsEmpty = true;
      folding = false;
      undFIn1 = true;
      topClothing = "Shirt #3";
    } else if (mousePressed && mouseButton == RIGHT && midDrawOut == true && inventory == "Shirt #3") {
      shirDraw3 = 600;
      shir3XPos = 35;
      shirFHide3 = 980;
      handsEmpty = true;
      folding = false;
      shirFIn3 = true;
      topClothing = "Shirt #2";
    } else if (mousePressed && mouseButton == RIGHT && midDrawOut == true && inventory == "Shirt #2") {
      shirDraw2 = 550;
      shir2XPos = 35;
      shirFHide2 = 980;
      handsEmpty = true;
      folding = false;
      shirFIn2 = true;
      topClothing = "Shirt #1";
    } else if (mousePressed && mouseButton == RIGHT && midDrawOut == true && inventory == "Shirt #1") {
      shirDraw1 = 500;
      shir1XPos = 35;
      shirFHide1 = 980;
      handsEmpty = true;
      folding = false;
      shirFIn1 = true;
      topClothing = "Nothing";
      clothingStored = true;
    } 
  }
  
  //drawer key interaction
  if (dist(camXPos, camYPos, camZPos, 425, 75, 960) <= 175 && handsEmpty == true && botDrawUnlocked == false) {
    fill(0);
    pushMatrix();
    textSize(4);
    textAlign(CENTER, CENTER);
    rotateY(PI);
    text("Right-click to pick up", -400, 280, -960);
    popMatrix();
    if (mousePressed && mouseButton == RIGHT) {
      drawKeyYPos = 1000;
      inventory = "Drawer Key";
      handsEmpty = false;
    }
  }
  
  //open bottom drawer compartment
  if (dist(camXPos, camYPos, camZPos, 842.5, 240, 150) <= 250 && inventory == "Drawer Key" && botDrawUnlocked == false) {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    if (drawChoice == "Bottom") {
      text("Left-click to unlock", 150, 210, -850);
      if (mousePressed && mouseButton == LEFT) {
        botDrawUnlocked = true;
        handsEmpty = true;
        drawKeyYPos = 2000;
      }
    }
   popMatrix();
  }
  
  //note for closet key
  if (dist(camXPos, camYPos, camZPos, 842.5, 240, 150) <= 250 && handsEmpty == true && botDrawOut == true && inStaticCam == false && drawChoice == "Bottom") {
    fill(255);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Right-click to read", 150, 210, -850);
    popMatrix();
    if (mousePressed && mouseButton == RIGHT) {
      inStaticCam = true;
      staticCamXPos = 650;
      staticCamYPos = 100;
      staticCamZPos = 150;
      cameraEnabled = false;
      drawNoteHide = 1000;
      readDrawNote = true;
      reading = true;
    }
  }

  //closet key under pillow
  if (dist(camXPos, camYPos, camZPos, 820, 260, 920) <= 275 && readDrawNote == true && handsEmpty == true) {
    if (mousePressed) {
      if (mouseButton == LEFT && pillowMoved == false) {
        pillowKey = 50;
        pillowMoved = true;
      } else if (mouseButton == RIGHT && pillowMoved == true && handsEmpty == true) {
        closKeyYPos = 1000;
        inventory = "Closet Key";
        handsEmpty = false;
      }
    }
  }
  
  //closet door interaction
  if (dist(camXPos, camYPos, camZPos, 802.5, 240, -100) <= 250 && inStaticCam == false) {
    fill(255);
    if (inventory != "Closet Key" && closDoorOpen == false && closDoorUnlocked == false) {
      textSize(5);
      textAlign(CENTER, CENTER);
      text("Closet Door Locked", 780, 125, -120);
    } else if (inventory == "Closet Key" && closDoorOpen == false && closDoorUnlocked == false) {
      textSize(5);
      textAlign(CENTER, CENTER);
      text("Left-click to unlock", 780, 125, -120);
      if (mousePressed && mouseButton == LEFT) {
        closKeyYPos = 2000;
        closDoorUnlocked = true;
        handsEmpty = true;
      }
    } else if (closDoorUnlocked == true && closDoorOpen == false) {
      textSize(5);
      textAlign(CENTER, CENTER);
      text("Press R to open", 780, 125, -120);
    } else if (closDoorUnlocked == true && closDoorOpen == true && firstClosetInteraction == true) {
      fill(255);
      pushMatrix();
      textSize(5);
      textAlign(CENTER, CENTER);
      rotateY(-PI/2);
      text("Press R to close", -125, 110, -875);
      popMatrix();
    }
  }
  
  //Bed jumpscare
  if (dist(camXPos, camYPos, camZPos, 780, 270, 735) <= 275 && inStaticCam == false && firstBedInteraction == false) {
    fill(0);
    pushMatrix();
    textSize(5);
    textAlign(CENTER, CENTER);
    rotateY(-PI/2);
    text("Press F to look under", 725, 210, -750);
    popMatrix();
  }
  
  //for opening bedroom door
  if (dist(camXPos, camYPos, camZPos, -25, 120, -175) <= 200 && chase == false) {
    fill(255);
    textSize(10);
    textAlign(CENTER, CENTER);
    if (bedrDoorOpen == false) {
      text("Bedroom Door", -25, 80, -135);
      text("Press R to open", -25, 90, -135);
    } else {
      pushMatrix();
      textSize(8);
      rotateY(PI/2);
      text("Press R to close", 100, 90, -100);
      popMatrix();
    }
  }
}

// Generates the 3D environment for the game
void renderEnvironment() {
  noStroke();

  // Floor
  fill(125);
  pushMatrix();
  translate(400, 360, 400);
  box(1200, 50, 1200);
  popMatrix();

  //Ceiling
  fill(225);
  pushMatrix();
  translate(400, -100, 400);
  box(1200, 50, 1200);
  popMatrix();

  //Right Wall
  fill(175);
    pushMatrix(); //left large section
  translate(-200, 130, 637.5); //right x: 300
  box(50, 410, 675);
  popMatrix();
    pushMatrix(); //top horizontal beam
  translate(-200, -45, 62.5);
  box(50, 60, 475);
  popMatrix();
    pushMatrix(); //right vertical beam
  translate(-200, 160, -156.25); //-137.5
  box(50, 350, 37.5);
  popMatrix();
    pushMatrix(); //section between left large section and hidden door
  translate(-200, 88.75, 168.75);
  box(50, 207.5, 262.5);
  popMatrix();
    pushMatrix(); //bottom horizontal beam
  translate(-200, 313.75, 168.75);
  box(50, 42.5, 262.5);
  popMatrix();
    pushMatrix(); //section between vent and hidden door
  translate(-200, 242.5, 118.75);
  box(50, 100, 162.5);
  popMatrix();

  //Left Wall
  pushMatrix();
  translate(1000, 125, 400);
  box(50, height / 2, 1200);
  popMatrix();

  //Front Wall
  fill(150);
  pushMatrix();
  translate(400, 125, 1000);
  box(1200, height / 2, 50);
  popMatrix();

  //Back Wall
    pushMatrix(); //section the painting is on
  translate(387.5, 155, -200); //837.5
  box(700, 360, 50);
  popMatrix();
    pushMatrix(); //horizontal beam at the top
  translate(400, -50, -200);
  box(1150, 50, 50);
  popMatrix();
    pushMatrix(); //left vertical beam
  translate(-156.25, 155, -200);
  box(37.5, 360, 50);
  popMatrix();
    pushMatrix(); //right vertical beam
  translate(943.75, 155, -200); //912.5
  box(62.5, 360, 50);
  popMatrix();

  //Closet Space
  fill(100);
    pushMatrix(); //back
  translate(825, 150, -395); 
  box(225, 400, 25);
  popMatrix();
    pushMatrix(); //top
  translate(825, -62.5, -325); 
  box(225, 25, 200);
  popMatrix();
  fill(125);
    pushMatrix(); //bottom
  translate(825, 347.5, -300); 
  box(225, 25, 200);
  popMatrix();
  fill(100);
    pushMatrix(); //left
  translate(712.5, 150, -325); 
  box(25, 400, 200);
  popMatrix();
    pushMatrix(); //right
  translate(937.5, 150, -325); 
  box(25, 400, 200);
  popMatrix();
  
  //Chasing Entity
  fill(0);
    pushMatrix(); //body
  translate(entityX, 100, entityZ + entityZIncr); 
  box(45, 45, 45);
  popMatrix();
    pushMatrix(); //lower body
  translate(entityX, 200, entityZ + entityZIncr); 
  box(120, 150, 120);
  popMatrix();
    pushMatrix(); //legs
  translate(entityX + 20, 305, entityZ + 55 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix(); 
  translate(entityX - 20, 305, entityZ + 55 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix();
  translate(entityX + 20, 305, entityZ - 55 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix();
  translate(entityX - 20, 305, entityZ - 55 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix(); //legs
  translate(entityX + 55, 305, entityZ + 20 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix(); 
  translate(entityX + 55, 305, entityZ - 20 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix();
  translate(entityX - 55, 305, entityZ + 20 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
    pushMatrix();
  translate(entityX - 55, 305, entityZ - 20 + entityZIncr); 
  box(10, 60, 10);
  popMatrix();
  fill(#670601);
    pushMatrix(); //eyes
  translate(entityX, 95, entityZ + 15 + entityZIncr);
  sphere(10);
  popMatrix();
    pushMatrix(); 
  translate(entityX, 95, entityZ - 15 + entityZIncr);
  sphere(10);
  popMatrix();
    pushMatrix(); 
  translate(entityX + 15, 95, entityZ + entityZIncr);
  sphere(10);
  popMatrix();
    pushMatrix(); 
  translate(entityX - 15, 95, entityZ + entityZIncr);
  sphere(10);
  popMatrix();
  fill(0);
    pushMatrix(); //pupils
  translate(entityX, 95, entityZ + 24.15 + entityZIncr);
  sphere(1);
  popMatrix();
    pushMatrix(); 
  translate(entityX, 95, entityZ - 24.15 + entityZIncr);
  sphere(1);
  popMatrix();
    pushMatrix(); //pupils
  translate(entityX + 24.15, 95, entityZ + entityZIncr);
  sphere(1);
  popMatrix();
    pushMatrix(); 
  translate(entityX - 24.15, 95, entityZ + entityZIncr);
  sphere(1);
  popMatrix();

  //Mother
  fill(255);
    pushMatrix(); //head
  translate(motherX, 0, motherZ + 30); 
  box(30, 30, 30);
  popMatrix();
  fill(#585131);
    pushMatrix(); //hair
  translate(motherX, 0, motherZ + 10); 
  box(40, 40, 10);
  popMatrix();
    pushMatrix(); 
  translate(motherX, -22.5, motherZ + 30); 
  box(40, 5, 40);
  popMatrix();
  fill(0);
    pushMatrix(); //left eye
  translate(motherX - 5, -10, motherZ + 42.5); 
  sphere(5);
  popMatrix();
  fill(255);
    pushMatrix(); 
  translate(motherX - 5, -10, motherZ + 45); 
  sphere(3);
  popMatrix();
  fill(0);
    pushMatrix(); 
  translate(motherX - 5, -10, motherZ + 46.5); 
  sphere(2);
  popMatrix();
    pushMatrix(); //right eye
  translate(motherX + 5, -10, motherZ + 42.5); 
  sphere(5);
  popMatrix();
  fill(255);
    pushMatrix(); 
  translate(motherX + 5, -10, motherZ + 45); 
  sphere(3);
  popMatrix();
  fill(0);
    pushMatrix(); 
  translate(motherX + 5, -10, motherZ + 46.5); 
  sphere(2);
  popMatrix();
    pushMatrix(); //torso
  translate(motherX, 75, motherZ); 
  box(42, 100, 42);
  popMatrix();
  fill(255);
    pushMatrix(); //neck
  translate(motherX, 15, motherZ); 
  box(10, 20, 10);
  popMatrix();
    pushMatrix();
  translate(motherX, 0, motherZ + 10); 
  box(10, 10, 30);
  popMatrix();
    pushMatrix(); //legs
  translate(motherX + 7, 230, motherZ); 
  box(5, 210, 5);
  popMatrix();
    pushMatrix();
  translate(motherX - 7, 230, motherZ); 
  box(5, 210, 5);
  popMatrix();
    pushMatrix(); //arms
  translate(motherX + 26, 170, motherZ);
  box(10, 230, 10);
  popMatrix();
    pushMatrix(); 
  translate(motherX - 26, 170, motherZ);
  box(10, 230, 10);
  popMatrix();
    pushMatrix(); //hands
  translate(motherX + 31, 295, motherZ);
  box(20, 20, 10);
  popMatrix();
    pushMatrix(); 
  translate(motherX - 31, 295, motherZ);
  box(20, 20, 10);
  popMatrix();

  //Closet Jumpscare
  fill(0);
    pushMatrix(); //body
  translate(825 - closJumpXPos, 150, -300 - closJumpZPos); //825
  box(30, 200, 30);
  popMatrix();
    pushMatrix(); //legs
  translate(815 - closJumpXPos, 292.5, -300 - closJumpZPos); //left -10
  box(10, 85, 10);
  popMatrix();
    pushMatrix(); 
  translate(835 - closJumpXPos, 292.5, -300 - closJumpZPos); //right  +10
  box(10, 85, 10);
  popMatrix();
    pushMatrix(); //arms
  translate(805 - closJumpXPos, 222.5, -300 - closJumpZPos); //left  -20
  box(10, 185, 10);
  popMatrix();
    pushMatrix(); 
  translate(845 - closJumpXPos, 222.5, -300 - closJumpZPos); //right  +20
  box(10, 185, 10);
  popMatrix();
  //eyes
  fill(255);
    pushMatrix(); //eyes
  translate(820 - closJumpXPos, 75, -286 - closJumpZPos); //left  -5
  sphere(3);
  popMatrix();
    pushMatrix(); 
  translate(830 - closJumpXPos, 75, -286 - closJumpZPos); //right  +5
  sphere(3);
  popMatrix();
  
  //Light Switch Base
  fill(200);
  pushMatrix();
  translate(125, 120, -190);
  box(15, 30, 40);
  popMatrix();

  //Light Switch Pole
  stroke(0);
  fill(185);
  pushMatrix();
  translate(125, 120, -175);
  rotateX(lightRotation);
  box(5, 5, 30);
  popMatrix();
  noStroke();

  //Ceiling Light
  fill(255 - 4 * ceilLightCol, 255 - 5 * ceilLightCol, 255 - 10 * ceilLightCol);
  pushMatrix();
  translate(400, -150, 400);
  sphere(100);
  popMatrix();

  //Hallway outside of bedroom
  fill(50);
    pushMatrix(); //floor
  translate(-68.75, 360, -3200); //-175 -> 37.5
  box(212.5, 50, 6000);
  popMatrix();
  fill(90);
    pushMatrix(); //left wall
  translate(-200, -40, -3225);
  box(50, 750, 6000);
  popMatrix();
    pushMatrix(); //right wall
  translate(62.5, -40, -3100);
  box(50, 750, 5750);
  popMatrix();
  fill(100);
    pushMatrix(); //back wall
  translate(-50, -40, -6200);
  box(500, 750, 50);
  popMatrix();
  fill(90);
    pushMatrix(); //ceiling
  translate(-68.75, -50, -3225);
  box(212.5, 50, 6000);
  popMatrix();
    pushMatrix(); //door on the right
  rotateY(-PI/2);
  fill(#2C251A);
  pushMatrix();
  translate(-1250, 150, -45); 
  box(175, 350, 25);
  popMatrix();
  fill(207, 194, 60);
  pushMatrix();
  translate(-1200, 165, -25);
  sphere(10);
  popMatrix();
    popMatrix();
    pushMatrix(); //door on the left
  rotateY(PI/2);
  fill(#2C251A);
  pushMatrix();
  translate(3325, 150, -180); 
  box(175, 350, 25);
  popMatrix();
  fill(207, 194, 60);
  pushMatrix();
  translate(3275, 165, -160);
  sphere(10);
  popMatrix();
    popMatrix();
  
  //Bedroom Door
    pushMatrix();
  rotateY(bedrDoorRotation);
  fill(75);
  pushMatrix();
  translate(-50 - bedrDoorXPos, 150, -195 + bedrDoorZPos); //top y: -25    right x: 37.5    left x: -137.5
  box(175, 350, 25);
  popMatrix();

  //Bedroom Door Doorknob
  fill(207, 194, 60);
  pushMatrix();
  translate(0 - bedrDoorXPos, 165, -175 + bedrDoorZPos);
  sphere(10);
  popMatrix();
    popMatrix();
    
  //Closet Door
    pushMatrix();
  rotateY(closDoorRotation);
  fill(75);
  pushMatrix();
  translate(825 - closDoorXPos, 150, -195 + closDoorZPos); //left x: 737.5     right x: 912.5
  box(175, 350, 25);
  popMatrix();

  //Closet Door Doorknob
  fill(207, 194, 60);
  pushMatrix();
  translate(775 - closDoorXPos, 165, -175 + closDoorZPos);
  sphere(10);
  popMatrix();

  //Keyhole of Closet Door
  fill(0);
    pushMatrix();
  translate(775 - closDoorXPos, 164, -165 + closDoorZPos);
  box(2, 2, 1);
  popMatrix();
    pushMatrix();
  translate(775 - closDoorXPos, 166, -165 + closDoorZPos);
  box(1, 4, 1);
  popMatrix();
    //Inserted Key 
  fill(#431621);
    pushMatrix(); //bow
  translate(775 - closDoorXPos, 2164 - closKeyYPos, -159.5 + closDoorZPos);
  box(1, 3, 1);
  popMatrix();
    pushMatrix(); 
  translate(775 - closDoorXPos, 2164 - closKeyYPos, -157.5 + closDoorZPos);
  box(1, 3, 1);
  popMatrix();
    pushMatrix(); 
  translate(775 - closDoorXPos, 2162.5 - closKeyYPos, -158.5 + closDoorZPos);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); 
  translate(775 - closDoorXPos, 2165.5 - closKeyYPos, -158.5 + closDoorZPos);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); //shaft
  translate(775 - closDoorXPos, 2164 - closKeyYPos, -162 + closDoorZPos);
  box(1, 1, 5);
  popMatrix();
    popMatrix();
    
  //Hidden Door
  fill(176);
  stroke(0, 5);
  pushMatrix();
  translate(-187.5, 160, -50);
  box(25, 350, 175);
  popMatrix();
  noStroke();

  //Crate
  fill(44);
    pushMatrix(); //wall side
  translate(400, 287.5, -165); //335 - 240 = 95    -160
  box(200, 95, 10);
  popMatrix();
    pushMatrix(); //parallel to wall side
  translate(400, 287.5, -55); // -60
  box(200, 95, 10);
  popMatrix();
    pushMatrix(); //closet side
  translate(500, 287.5, -110); //495
  box(10, 95, 110);
  popMatrix();
    pushMatrix(); //parallel to closet side
  translate(300, 287.5, -110); //305
  box(10, 95, 110);
  popMatrix();
  fill(22);
    pushMatrix(); //bottom side
  translate(400, 330, -110);
  box(190, 10, 100);
  popMatrix();

  //Crate Lid
  fill(100);
  pushMatrix();
  translate(crateLidX, crateLidY, -125);
  box(220, 10, 160);
  popMatrix();

  //Drawer
  fill(#504E45);
    pushMatrix(); //top side
  translate(900, 217.5, 150); //275 -> 25 outside, 265 -> 35 inside
  box(125, 10, 250);
  popMatrix();
    pushMatrix(); //bottom side
  translate(900, 330, 150);
  box(125, 10, 250);
  popMatrix();
    pushMatrix(); //back side
  translate(957.5, 273.75, 150); //325 -> 222.5
  box(10, 102.5, 250);
  popMatrix();
    pushMatrix(); //left side
  translate(900, 273.75, 30);
  box(125, 102.5, 10);
  popMatrix();
    pushMatrix(); //right side
  translate(900, 273.75, 270);
  box(125, 102.5, 10);
  popMatrix();
  stroke(0);
  fill(drawHighlightT);
    pushMatrix(); //TOP COMPARTMENT
  translate(842.5 - drawXPosT, 325 - (102.5 / 2) - (102.5 / 3), 150);
  box(5, 102.5/3, 230);
  popMatrix();
    pushMatrix(); //top side
  translate(898.75, 225, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //bottom side
  translate(898.75 - drawXPosT, 1525/6, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //left side
  translate(898.75 - drawXPosT, 2875/12, 37.5);
  box(107.5, 145/6, 5);
  popMatrix();
    pushMatrix(); //right side
  translate(898.75 - drawXPosT, 2875/12, 262.5);
  box(107.5, 145/6, 5);
  popMatrix();
  fill(drawHighlightM);
    pushMatrix(); //MIDDLE COMPARTMENT
  translate(842.5 - drawXPosM, 325 - (102.5 / 2), 150);
  box(5, 102.5/3, 230);
  popMatrix();
    pushMatrix(); //top side
  translate(898.75, 1555/6, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //bottom side
  translate(898.75 - drawXPosM, 865/3, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //left side
  translate(898.75 - drawXPosM, 1095/4, 37.5);
  box(107.5, 145/6, 5);
  popMatrix();
    pushMatrix(); //right side
  translate(898.75 - drawXPosM, 1095/4, 262.5);
  box(107.5, 145/6, 5);
  popMatrix();
  fill(drawHighlightB);
    pushMatrix(); //BOTTOM COMPARTMENT
  translate(842.5 - drawXPosB, 325 - (102.5 / 6), 150);
  box(5, 102.5/3, 230);
  popMatrix();
    pushMatrix(); //top side
  translate(898.75, 880/3, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //bottom side
  translate(898.75 - drawXPosB, 322.5, 150);
  box(107.5, 5, 230);
  popMatrix();
    pushMatrix(); //left side0
  translate(898.75 - drawXPosB, 3695/12, 37.5);
  box(107.5, 145/6, 5);
  popMatrix();
    pushMatrix(); //right side
  translate(898.75 - drawXPosB, 3695/12, 262.5);
  box(107.5, 145/6, 5);
  popMatrix();
  //Handles
  fill(drawHighlightT);
    pushMatrix(); //top
  translate(837.5 - drawXPosT, 325 - (102.5 / 2) - (102.5 / 3), 150);
  box(5, 5, 100);
  popMatrix();
  fill(drawHighlightM);
    pushMatrix(); //middle
  translate(837.5 - drawXPosM, 325 - (102.5 / 2), 150);
  box(5, 5, 100);
  popMatrix();
  fill(drawHighlightB);
    pushMatrix(); //bottom
  translate(837.5 - drawXPosB, 325 - (102.5 / 6), 150);
  box(5, 5, 100);
  popMatrix();
  noStroke();

  //Keyhole of BOTTOM COMPARTMENT
  fill(200);
    pushMatrix();
  translate(837.5 - drawXPosB, 300, 250);
  box(2, 10, 10);
  popMatrix();
  fill(0);
    pushMatrix();
  translate(836.5 - drawXPosB, 298, 250);
  box(1, 2, 2);
  popMatrix();
    pushMatrix();
  translate(836.5 - drawXPosB, 301, 250);
  box(1, 4, 1);
  popMatrix();
    //Inserted Key 
  fill(#6F6025);
    pushMatrix(); //bow
  translate(830.5 - drawXPosB, -1701 + drawKeyYPos, 250);
  box(1, 3, 1);
  popMatrix();
    pushMatrix(); 
  translate(828.5 - drawXPosB, -1701 + drawKeyYPos, 250);
  box(1, 3, 1);
  popMatrix();
    pushMatrix(); 
  translate(829.5 - drawXPosB, -1702.5 + drawKeyYPos, 250);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); 
  translate(829.5 - drawXPosB, -1699.5 + drawKeyYPos, 250);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); //shaft
  translate(833.5 - drawXPosB, -1701 + drawKeyYPos, 250);
  box(5, 1, 1);
  popMatrix();

  //Note for Closet Key in drawer
  fill(200);
    pushMatrix(); 
  translate(898.75 - drawXPosB, 319.5 + drawNoteHide, 150);
  box(40, 1, 25);
  popMatrix();
  noStroke();
  
  //Note for Closet Key during reading
    //Note
  fill(200);
    pushMatrix(); 
  translate(758.75, 1125 - drawNoteHide, 150);
  box(1, 80, 60);
  popMatrix();
  noStroke();
    pushMatrix();
  textSize(2);
  fill(#7E0121); //text
  textAlign(CENTER, CENTER);
  rotateY(-PI/2);
  text("Beneath the dreams, the secret appears", 150, 1110 - drawNoteHide, -750);
  text("Unlock the door to confront your fears", 150, 1120 - drawNoteHide, -750);
  fill(0);
  text("Note:", 150, 1140 - drawNoteHide, -750);
  text("Left-click to interact, right-click to pick up", 150, 1145 - drawNoteHide, -750);
  text("Press Q to stop reading", 150, 1155 - drawNoteHide, -750);
  popMatrix();
  
  //Bed
  fill(135);
    pushMatrix(); //mattress
  translate(890, 290 - hideBedYPos, 725);
  box(300, 40, 450);
  popMatrix();
  fill(225);
    pushMatrix(); //blanket
  translate(855, 270 - hideBedYPos, 710);
  box(200, 5, 400);
  popMatrix();

  //Bed Legs
    pushMatrix(); //top right
  translate(970, 300, 500);
  box(5, 75, 5);
  popMatrix();
    pushMatrix(); //top left
  translate(740, 300, 500);
  box(5, 75, 5);
  popMatrix();
  fill(225, 225, 225);
    pushMatrix(); //bottom right
  translate(970, 260, 950);
  box(5, 150, 5);
  popMatrix();
    pushMatrix(); //bottom left
  translate(740, 260, 950);
  box(5, 150, 5);
  popMatrix();

  //Bed Back Rest
  pushMatrix();
  translate(855, 270, 950);
  box(225, 140, 5);
  popMatrix();

  //Pillow
  fill(175);
  for (int i = 0; i <= 70; i += 5) {
    pushMatrix();
    translate(820 + i, 260 - hideBedYPos, 920 - pillowKey);
    sphere(15);
    popMatrix();
  }
  
  //Closet Key
  fill(#431621);
    pushMatrix(); //bow
  translate(840, 269.5 + closKeyYPos, 925);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); 
  translate(840, 269.5 + closKeyYPos, 928);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); 
  translate(841, 269.5 + closKeyYPos, 926.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); 
  translate(839, 269.5 + closKeyYPos, 926.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); //shaft
  translate(845.5, 269.5 + closKeyYPos, 926.5);
  box(8, 1, 1);
  popMatrix();
    pushMatrix(); //bits
  translate(849, 269.5 + closKeyYPos, 928.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix();
  translate(847, 269.5 + closKeyYPos, 928.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix();
  translate(844, 269.5 + closKeyYPos, 928.5);
  box(1, 1, 3);
  popMatrix();

  //Pile of Clothes
  if (animation == false) {
    //Shirts  265, 262, 259
    fill(100);
      pushMatrix(); //#1 main section
    translate(810, 265 - hideBedYPos + shirHide1, 617.5);
    box(100, 3, 65);
    popMatrix();
      pushMatrix(); //left sleeve
    rotateY(PI/8);
    translate(565, 265 - hideBedYPos + shirHide1, 852.5);
    box(30, 3, 60);
    popMatrix();
      pushMatrix(); //right sleeve
    rotateY(-PI/8);
    translate(1035, 265 - hideBedYPos + shirHide1, 285.5);
    box(30, 3, 60);
    popMatrix();
    fill(200);
      pushMatrix(); //#2 main section
    translate(810, 262 - hideBedYPos + shirHide2, 617.5);
    box(100, 3, 65);
    popMatrix();
      pushMatrix(); //left sleeve
    rotateY(PI/8);
    translate(565, 262 - hideBedYPos + shirHide2, 852.5);
    box(30, 3, 60);
    popMatrix();
      pushMatrix(); //right sleeve
    rotateY(-PI/8);
    translate(1035, 262 - hideBedYPos + shirHide2, 285.5);
    box(30, 3, 60);
    popMatrix();
    fill(#2D3158);
      pushMatrix(); //#3 main section
    translate(810, 259 - hideBedYPos + shirHide3, 617.5);
    box(100, 3, 65);
    popMatrix();
      pushMatrix(); //left sleeve
    rotateY(PI/8);
    translate(565, 259 - hideBedYPos + shirHide3, 852.5);
    box(30, 3, 60);
    popMatrix();
      pushMatrix(); //right sleeve
    rotateY(-PI/8);
    translate(1035, 259 - hideBedYPos + shirHide3, 285.5);
    box(30, 3, 60);
    popMatrix();
      //Underwear
    stroke(0);
    fill(175);
      pushMatrix(); //#1 legs
    translate(800, 256 - hideBedYPos + undHide1, 600);
    box(40, 3, 20);
    popMatrix();
      pushMatrix();
    translate(800, 256 - hideBedYPos + undHide1, 635);
    box(40, 3, 20);
    popMatrix();
      pushMatrix(); //connection
    translate(810, 256 - hideBedYPos + undHide1, 617.5);
    box(20, 3, 15);
    popMatrix();
    fill(#2C2D43);
      pushMatrix(); //top
    translate(825, 256 - hideBedYPos + undHide1, 617.5);
    box(10, 3, 55);
    popMatrix();
    fill(175);
      pushMatrix(); //#2 legs
    translate(800, 253 - hideBedYPos + undHide2, 600);
    box(40, 3, 20);
    popMatrix();
      pushMatrix();
    translate(800, 253 - hideBedYPos + undHide2, 635);
    box(40, 3, 20);
    popMatrix();
      pushMatrix(); //connection
    translate(810, 253 - hideBedYPos + undHide2, 617.5);
    box(20, 3, 15);
    popMatrix();
    fill(#2C2D43);
      pushMatrix(); //top
    translate(825, 253 - hideBedYPos + undHide2, 617.5);
    box(10, 3, 55);
    popMatrix();
    fill(175);
      pushMatrix(); //#3 legs
    translate(800, 250 - hideBedYPos + undHide3, 600);
    box(40, 3, 20);
    popMatrix();
      pushMatrix();
    translate(800, 250 - hideBedYPos + undHide3, 635);
    box(40, 3, 20);
    popMatrix();
      pushMatrix(); //connection
    translate(810, 250 - hideBedYPos + undHide3, 617.5);
    box(20, 3, 15);
    popMatrix();
    fill(#2C2D43);
      pushMatrix(); //top
    translate(825, 250 - hideBedYPos + undHide3, 617.5);
    box(10, 3, 55);
    popMatrix();
    noStroke();
  }
  //Folded Clothing
    //Underwear
  fill(175);
    pushMatrix();
  translate(800 + und3XPos, 1265 - undFHide3, 667.5 - undDraw3); //und #3
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und3XPos, 1263.5 - undFHide3, 667.5 - undDraw3);
  box(20, 1.5, 27.5);
  popMatrix();
  fill(#2C2D43);
    pushMatrix();
  translate(800 + und3XPos, 1261 - undFHide3, 667.5 - undDraw3);
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und3XPos, 1259.5 - undFHide3, 667.5 - undDraw3);
  box(20, 1.5, 27.5);
  popMatrix();
  fill(175);
    pushMatrix();
  translate(800 + und2XPos, 1265 - undFHide2, 667.5 - undDraw2); //und #2
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und2XPos, 1263.5 - undFHide2, 667.5 - undDraw2);
  box(20, 1.5, 27.5);
  popMatrix();
  fill(#2C2D43);
    pushMatrix();
  translate(800 + und2XPos, 1261 - undFHide2, 667.5 - undDraw2);
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und2XPos, 1259.5 - undFHide2, 667.5 - undDraw2);
  box(20, 1.5, 27.5);
  popMatrix();
  fill(175);
    pushMatrix();
  translate(800 + und1XPos, 1265 - undFHide1, 667.5 - undDraw1); //und #1
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und1XPos, 1263.5 - undFHide1, 667.5 - undDraw1);
  box(20, 1.5, 27.5);
  popMatrix();
  fill(#2C2D43);
  pushMatrix();
  translate(800 + und1XPos, 1261 - undFHide1, 667.5 - undDraw1);
  box(20, 1.5, 27.5);
  popMatrix();
    pushMatrix();
  translate(800 + und1XPos, 1259.5 - undFHide1, 667.5 - undDraw1);
  box(20, 1.5, 27.5);
  popMatrix();
    //Shirts
  fill(#2D3158);
    pushMatrix(); //shirt #3
  translate(790 + shir3XPos, 1265 - shirFHide3, 687.5 - shirDraw3);
  box(50, 6, 40);
  popMatrix();
  fill(200);
    pushMatrix(); //shirt #2
  translate(790 + shir2XPos, 1265 - shirFHide2, 687.5 - shirDraw2);
  box(50, 6, 40);
  popMatrix();
  fill(100);
    pushMatrix(); //shirt #1
  translate(790 + shir1XPos, 1265 - shirFHide1, 687.5 - shirDraw1);
  box(50, 6, 40);
  popMatrix();
  
  //Bed Corner Numbers
  fill(#7E0121);
  pushMatrix();
  textSize(2);
  textAlign(CENTER, CENTER);
  rotateY(PI);
  text("37", -925, 320, -925);
  popMatrix();

  //Bed Jumpscare
  fill(0);
    pushMatrix(); //head
  translate(885 + bedJumpXPos, 320, 730);
  box(10, 30, 30);
  popMatrix();
    pushMatrix(); //body
  translate(940 + bedJumpXPos, 325, 730);
  box(100, 20, 20);
  popMatrix();
  fill(255);
    pushMatrix(); //eyes
  translate(879.5 + bedJumpXPos, 320, 725);
  sphere(3);
  popMatrix();
    pushMatrix();
  translate(879.5 + bedJumpXPos, 320, 735);
  sphere(3);
  popMatrix();
  
  //Corner Desk
  fill(225);
    pushMatrix();
  translate(-100, 215, 767.5);
  box(125, 60, 140);
  popMatrix();
    pushMatrix();
  translate(12, 215, 900); //837.5
  box(350, 60, 125);
  popMatrix();

  //text during animation
  if (seconds < 8 && animation == true) { 
    fill(0);
    pushMatrix();
    textSize(7);
    textAlign(CENTER, CENTER);
    rotateY(PI);
    text("Press R to skip", -110, 100, -850);
    popMatrix();
  } else if (seconds < 25 & animation == true) {
    fill(0);
    textSize(4);
    textAlign(CENTER, CENTER);
    pushMatrix();
    rotateY(PI/2);
    if (seconds >= 19 && seconds < 22) {
      text("Two more hours and Mother will come to check on me", -680, 100, -60);
    }
    if (seconds >= 22 && seconds < 25) {
      text("I should go get some rest", -680, 100, -60);
    }
    popMatrix();
  }
  
  //Laptop
  fill(200);
    pushMatrix(); //keyboard
  translate(70, 182, 887.5);
  box(90, 5, 45);
  popMatrix();
  fill(100); //keys
  for (int j = 0; j < 3; j++) {
    for (int i = 0; i < 70 - (7 * j); i += 7) {
      pushMatrix();
      translate(100 - i - (3 * j), 181.5, 897.5 - (7.5 * j));
      box(5, 5, 5);
      popMatrix();
    }
  }
    pushMatrix(); //spacebar
  translate(71.5, 181.5, 875);
  box(30, 5, 5);
  popMatrix();
    pushMatrix(); //base
  translate(70, 182.5, 890);
  box(100, 5, 60);
  popMatrix();
  if (animation == true && seconds < 26.5) {
      pushMatrix(); //screen
    translate(70, 150, 917.5);
    box(100, 60, 5);
    popMatrix();
    fill(#289DA0);
      pushMatrix(); //blue screen
    translate(70, 150, 917);
    box(90, 50, 5);
    popMatrix();
    if (notifSound == true && seconds < 13) {
      pushMatrix();
      translate(47.5, 165, 916);
      box(45, 20, 5);
      popMatrix();
      fill(255);
      pushMatrix();
      textSize(3);
      textAlign(CENTER, CENTER);
      rotateY(PI);
      text("GO TO SLEEP", -67, 142, -850);
      textSize(2.5);
      text("Alarm at 1:00 AM", -67, 147, -850);
      popMatrix();
    }
    fill(255);
      pushMatrix(); //work
    translate(70, 150, 916.5);
    box(80, 40, 5);
    popMatrix();
  } else {
      pushMatrix(); //lid
    translate(70, 178.5, 890);
    box(100, 3, 60);
    popMatrix();
  }

  //Sleeping Pills
  if (animation == false) {
      //Blister pack
    fill(150);
      pushMatrix();
    translate(-100, 184, 767.5);
    box(25, 2, 50);
    popMatrix();
    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 50; j += 5) {
        if ((i == 0 && j >= 0 && j <= 15) || (i == 1 && j >= 0 && j <= 10 + pillColour)) {
          fill(150);
        } else {
          fill(255);
        }
        pushMatrix();
        translate(-105 + (10 * i), 183.5, 789.5 - j);
        sphere(1);
        popMatrix();
      }
    }
  }
  
  //Desk Drawer
  fill(225);
    pushMatrix(); //top of drawer
  translate(-100, 192.5, 635); //192.5 + 7.5 = 200
  box(125, 15, 125);
  popMatrix();
    pushMatrix(); //bottom of drawer
  translate(-100, 327.5, 635);
  box(125, 15, 125); //335 - 15 = 320
  popMatrix();
    pushMatrix(); //back of drawer
  translate(-155, 260, 635);
  box(15, 120, 125);
  popMatrix();
    pushMatrix(); //right side of drawer
  translate(-92.5, 260, 580); //587.5
  box(110, 120, 15);
  popMatrix();
    pushMatrix(); //left side of drawer
  translate(-92.5, 260, 690);  //682.5
  box(110, 120, 15);
  popMatrix();
  stroke(0);
  fill(ddrawHighlightT);
    pushMatrix(); //TOP COMPARTMENT
  translate(-39 + ddrawXPosT, 220, 635);
  box(5, 40, 95);
  popMatrix();
    pushMatrix(); //top side
  translate(-94.5, 202.5, 635);
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //bottom side
  translate(-94.5 + ddrawXPosT, 237.5, 635); //-147.5 -> -41.5
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //right side
  translate(-94.5 + ddrawXPosT, 220, 590);
  box(106, 40, 5);
  popMatrix();
    pushMatrix(); //left side
  translate(-94.5 + ddrawXPosT, 220, 680);
  box(106, 40, 5);
  popMatrix();
  fill(ddrawHighlightM);
    pushMatrix(); //MIDDLE COMPARTMENT
  translate(-39 + ddrawXPosM, 260, 635);
  box(5, 40, 95);
  popMatrix();
    pushMatrix(); //top side
  translate(-94.5, 242.5, 635);
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //bottom side
  translate(-94.5 + ddrawXPosM, 277.5, 635);
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //right side
  translate(-94.5 + ddrawXPosM, 260, 590);
  box(106, 40, 5);
  popMatrix();
    pushMatrix(); //left side
  translate(-94.5 + ddrawXPosM, 260, 680);
  box(106, 40, 5);
  popMatrix();
  fill(ddrawHighlightB);
    pushMatrix(); //BOTTOM COMPARTMENT
  translate(-39 + ddrawXPosB, 300, 635);
  box(5, 40, 95);
  popMatrix();
    pushMatrix(); //top side
  translate(-94.5, 282.5, 635);
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //bottom side
  translate(-94.5 + ddrawXPosB, 317.5, 635);
  box(106, 5, 95);
  popMatrix();
    pushMatrix(); //right side
  translate(-94.5 + ddrawXPosB, 300, 590);
  box(106, 40, 5);
  popMatrix();
    pushMatrix(); //left side
  translate(-94.5 + ddrawXPosB, 300, 680);
  box(106, 40, 5);
  popMatrix();
  //Handles
  fill(ddrawHighlightT);
    pushMatrix(); //top
  translate(-35 + ddrawXPosT, 220, 635);
  box(5, 5, 20);
  popMatrix();
  fill(ddrawHighlightM);
    pushMatrix(); //middle
  translate(-35 + ddrawXPosM, 260, 635);
  box(5, 5, 20);
  popMatrix();
  fill(ddrawHighlightB);
    pushMatrix(); //bottom
  translate(-35 + ddrawXPosB, 300, 635);
  box(5, 5, 20);
  popMatrix();
  noStroke();

  //Corner Desk Legs
  fill(200);
    pushMatrix(); //bottom left
  translate(-160, 285, 925);
  box(5, 100, 5);
  popMatrix();
    pushMatrix(); //bottom right
  translate(-42, 285, 920);
  box(5, 100, 5);
  popMatrix();
    pushMatrix(); //top left
  translate(170, 285, 960);
  box(5, 100, 5);
  popMatrix();
    pushMatrix(); //top right
  translate(170, 285, 845);
  box(5, 100, 5);
  popMatrix();
  
  //Desk Chair
  fill(100);
    pushMatrix();
  rotateY(PI/2);
    pushMatrix();
  translate(-665 + chairXPos, 235, 100 + chairZPos);
  box(10, 200, 100);
  popMatrix();
    pushMatrix();
  translate(-715 + chairXPos, 255, 100 + chairZPos);
  box(90, 10, 100);
  popMatrix();
    pushMatrix();
  translate(-755 + chairXPos, 297.5, 100 + chairZPos);
  box(10, 75, 100);
  popMatrix();
    popMatrix();

  //Carpet
  fill(69, 56, 50);
  pushMatrix();
  translate(430, 343, 690);
  box(500, 20, 500);
  box(300, 22, 300);
  fill(79, 74, 71);
  rotateY(PI/4);
  box(400, 21, 400);
  popMatrix();

  //Window
  fill(windowCol);
    pushMatrix();
  translate(425, 75, 960); //150 -> -2.5    500 -> 350
  box(150, 150, 0.5);
  fill(75);
  box(2.5, 155, 1); //vertical
  box(155, 2.5, 1.5); //horizontal
  popMatrix();
  fill(75);
    pushMatrix(); //top frame side
  translate(425, 0, 960);
  box(155, 5, 5);
  popMatrix();
    pushMatrix(); //bottom frame side
  translate(425, 152.5, 960);
  box(155, 5, 5);
  popMatrix();
    pushMatrix(); //left frame side
  translate(502.5, 76.25, 960);
  box(5, 157.5, 5);
  popMatrix();
    pushMatrix(); //right frame side
  translate(347.5, 76.25, 960);
  box(5, 157.5, 5);
  popMatrix();

  //Curtains
  fill(175);
  pushMatrix(); //curtain pole
  translate(425, -12.5, 960); //535 -> 315
  box(300, 5, 5);
  popMatrix();
  for (int i = 0; i <= 100; i += 10) { //right curtain
    if (i % 20 == 0) {
      fill(25);
      pushMatrix();
      translate(275 + curtainXPos + i, 155, 945);
    } else {
      fill(75);
      pushMatrix();
      translate(275 + curtainXPos + i, 155, 950);
    }
    box(10, 340, 15);
    popMatrix();
  }
  for (int i = 0; i <= 100; i += 10) { //left curtain
    if (i % 20 == 0) {
      fill(25);
      pushMatrix();
      translate(475 - curtainXPos + i, 155, 945);
    } else {
      fill(75);
      pushMatrix();
      translate(475 - curtainXPos + i, 155, 950);
    }
    box(10, 340, 15);
    popMatrix();
  }

  //Drawer Key
  fill(#6F6025);
    pushMatrix(); //bow
  translate(370, 334.5 - drawKeyYPos, 965);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); 
  translate(370, 334.5 - drawKeyYPos, 968);
  box(3, 1, 1);
  popMatrix();
    pushMatrix(); 
  translate(371, 334.5 - drawKeyYPos, 966.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); 
  translate(369, 334.5 - drawKeyYPos, 966.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix(); //shaft
  translate(375.5, 334.5 - drawKeyYPos, 966.5);
  box(8, 1, 1);
  popMatrix();
    pushMatrix(); //bits
  translate(379, 334.5 - drawKeyYPos, 968.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix();
  translate(377, 334.5 - drawKeyYPos, 968.5);
  box(1, 1, 3);
  popMatrix();
    pushMatrix();
  translate(374, 334.5 - drawKeyYPos, 968.5);
  box(1, 1, 3);
  popMatrix();

  //Painting
  fill(#A7A6A6);
    pushMatrix(); //canvas
  translate(400, 50, -165);
  box(300, 125, 1);
  popMatrix();
  fill(#04325F);
    pushMatrix();
  translate(0, 0, -164.2);
  quad(550, -12.5, 250, -12.5, 250, 112.5, 550, 112.5);
  popMatrix();
    pushMatrix();
  translate(0, 0, -164);
  quad(350, -12.5, 450, -12.5, 450, 112.5, 350, 112.5);
  popMatrix();
  fill(#A2A2A2);
    pushMatrix();
  translate(0, 0, -163.5);
  quad(500, 106, 337, 103, 298, 5, 490, 37);
  popMatrix();
  fill(#716F90);
    pushMatrix();
  translate(0, 0, -163);
  quad(300, 96, 257, 53, 298, -10, 390, 37);
  popMatrix();
  fill(#323767);
    pushMatrix();
  translate(0, 0, -162.5);
  ellipse(452, 54, 40, 98);
  popMatrix();
  fill(0);
    pushMatrix();
  translate(0, 0, -162);
  quad(434, 26, 253, 68, 264, 90, 528, 21);
  popMatrix();
  fill(#333155);
    pushMatrix();
  translate(0, 0, -162);
  triangle(434, 26, 253, 68, 264, 90);
  popMatrix();
  fill(#44416F);
    pushMatrix();
  translate(0, 0, -161.8);
  triangle(434, 26, 253, 68, 264, 80);
  popMatrix();
    pushMatrix();
  fill(#314B6F);
  translate(0, 0, -161.5);
  arc(370, 15, 125, 125, PI/3, HALF_PI);
  triangle(364, 110, 453, 98, 534, 36);
  popMatrix();
  stroke(0);
  line(300, 0, -162.9, 540, 100, -162.9);
  line(280, 40, -162.8, 500, 80, -162.8);
  noStroke();

  //To-do List
  if (animation == false) {
    fill(255);
    pushMatrix();
    translate(-174, 80, 700);
    box(2, 150, 100);
    popMatrix();
    //Text
    fill(0);
    pushMatrix();
    rotateY(PI/2);
    textSize(10);
    textAlign(CENTER, CENTER);
    text("TO-DO LIST", -700, 12, -172);
    textSize(4);
    textAlign(CENTER, CENTER);
    text("in order to fall asleep", -700, 19, -172);
    fill(#7E0121);
    text("before Mother comes to check at 3 am", -700, 23, -172);
    textSize(4);
    textAlign(LEFT);
    fill(0);
    text("- Fold and put clothes back in the drawer", -747, 35, -172);
    text("- Check under your bed", -747, 45, -172);
    text("- Check your closet", -747, 55, -172);
    text("- Close the curtains", -747, 65, -172);
    text("- Place your stuffed animal by your pillow", -747, 75, -172);
    text("- Take your sleeping pills", -747, 85, -172);
    text("- Turn the lights off", -747, 95, -172);
    text("- Go to sleep", -747, 105, -172);
    fill(#7E0121);
    textSize(7);
    textAlign(CENTER, CENTER);
    text("REMEMBER:", -700, 120, -172);
    textSize(4);
    text("YOU ARE SLEEP DEPRIVED", -700, 130, -172);
    text("THE THINGS YOU SEE MAY NOT BE REAL", -700, 137, -172);
    text("IF THEY GET TOO CLOSE, HIDE UNDER THE BED", -700, 144, -172);
    popMatrix();
  }
  
  //Digital Clock
  fill(0);
    pushMatrix();
  translate(-135, 175, 667.5);
  box(10, 30, 45);
  popMatrix();

  //Digital Clock Display
  fill(#FF0000);
  if (seconds < 26 && animation == true) { //at the part during the animation when the camera pans to the clock, the clock displays 01:00
    pushMatrix();
    textSize(15);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("01:00", -667, 170.5, -129);
    popMatrix();
  } else if (seconds >= 41 && seconds < 54 && animation == true) { //at the part of the animation when the camera pans to the clock, the clock displays 02:50
    pushMatrix();
    textSize(15);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("02:50", -667, 170.5, -129);
    popMatrix();
  } else if (minutes == 9 && seconds == 55 && animation == false) { //when it is 5 seconds before 3 AM, knocking on the door sound effects are played
    if (doorSoundNum == 0) {
      knockFile.play();
      doorSoundNum++;
    }
  } else if (minutes == 10 && seconds == 0 && animation == false) { //it is 3 AM and the mother scenario commences
    is3AM = true;
    pushMatrix();
    textSize(15);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("03:00", -667, 170.5, -129);
    popMatrix();
    motherX = -45;
    motherZ = -250;
    if (jumpSoundNum == 0) {
      openDoorFile.play();
      jumpSoundNum++;
    }
  } else { //else, the clock displays the time, counting up relative to the realistic minutes and seconds
    pushMatrix();
    textSize(15);
    textAlign(CENTER, CENTER);
    rotateY(PI/2);
    text("02:" + nf(minutes + 50, 2), -667, 170.5, -129);
    popMatrix();
    if (minutes == 1 && seconds == 0 && bedrJump == false) { //hallway jumpscare after one minute of playing the game
      bedrDoorRotation = -PI/2;
      bedrDoorXPos = 75;
      bedrDoorZPos = 320;
      bedrDoorOpen = true;
      closJumpXPos = 885;
      closJumpZPos = 5500;
      lightsOn = false;
      bedrJump = true;
      if (chaseSoundNum == 0) {
        creakDoor.play();
        chaseSoundNum++;
      }
      //at the 3 minute, 5 minute, and 7 minute mark, the chasing scenes happen
    } else if (((minutes == 3 && seconds == 0) || (minutes == 5 && seconds == 0) || (minutes == 7 && seconds == 0)) && chase == false) {
      entityX = -60;
      entityZ = -6000;  
      closJumpXPos = 0;
      closJumpZPos = 0;
      chase = true;
    }
  }

  //Vent
  fill(125);
  pushMatrix();
  rotateZ(ventRotation);
  for (int i = 0; i < 100; i += 10) {
    pushMatrix();
    translate(-172.5 - ventXPos, 200 + i - ventYPos, 250 - ventZPos);
    box(5, 3, 100);
    popMatrix();
  }
  //Outline
  fill(75);
    pushMatrix(); //top
  translate(-172.5 - ventXPos, 195 - ventYPos, 250 - ventZPos);
  box(7.5, 5, 110);
  popMatrix();
    pushMatrix(); //bottom
  translate(-172.5 - ventXPos, 295 - ventYPos, 250 - ventZPos);
  box(7.5, 5, 110);
  popMatrix();
    pushMatrix(); //left
  translate(-172.5 - ventXPos, 245 - ventYPos, 302.5 - ventZPos);
  box(7.5, 95, 5);
  popMatrix();
    pushMatrix(); //right
  translate(-172.5 - ventXPos, 245 - ventYPos, 197.5 - ventZPos);
  box(7.5, 95, 5);
  popMatrix();
    popMatrix();

  //Space behind the vent
  fill(80);
    pushMatrix(); //wall
  translate(-300, 260, 250);
  box(10, 1000, 1000);
  popMatrix();
    pushMatrix(); //bottom
  translate(-300, 405, 250);
  box(150, 10, 500);
  popMatrix();

  //Stuffed Animal
    pushMatrix();
  rotateY(animalRotation);
  fill(#74695C);
    pushMatrix(); //head
  translate(230 + animalXPos, 342 - animalYPos, 285 + animalZPos);
  box(42, 24, 20);
  popMatrix();
    pushMatrix(); //ears
  translate(243.5 + animalXPos, 326 - animalYPos, 285 + animalZPos);
  box(15, 10, 5);
  popMatrix();
    pushMatrix();
  translate(216.5 + animalXPos, 326 - animalYPos, 285 + animalZPos);
  box(15, 10, 5);
  popMatrix();
    pushMatrix(); //body
  translate(230 + animalXPos, 377 - animalYPos, 285 + animalZPos);
  box(34, 46, 20);
  popMatrix();
    pushMatrix(); //legs
  translate(241 + animalXPos, 394 - animalYPos, 270 + animalZPos);
  box(12, 12, 10);
  popMatrix();
    pushMatrix();
  translate(219 + animalXPos, 394 - animalYPos, 270 + animalZPos);
  box(12, 12, 10);
  popMatrix();
    pushMatrix(); //paws
  translate(241 + animalXPos, 390 - animalYPos, 265 + animalZPos);
  box(15, 20, 10);
  popMatrix();
    pushMatrix();
  translate(219 + animalXPos, 390 - animalYPos, 265 + animalZPos);
  box(15, 20, 10);
  popMatrix();
    pushMatrix(); //arms
  translate(207 + animalXPos, 370 - animalYPos, 280 + animalZPos);
  box(12, 25, 20);
  popMatrix();
    pushMatrix();
  translate(253 + animalXPos, 370 - animalYPos, 280 + animalZPos);
  box(12, 25, 20);
  popMatrix();
  fill(#A7947D);
    pushMatrix(); //nose
  translate(230 + animalXPos, 345 - animalYPos, 274 + animalZPos);
  box(12, 12, 2);
  popMatrix();
  fill(0);
    pushMatrix();
  translate(230 + animalXPos, 345 - animalYPos, 272.5 + animalZPos);
  box(3, 3, 3);
  popMatrix();
    pushMatrix(); //eyes
  translate(237 + animalXPos, 336 - animalYPos, 276 + animalZPos);
  sphere(2);
  popMatrix();
    pushMatrix(); //eyes
  translate(223 + animalXPos, 336 - animalYPos, 276 + animalZPos);
  sphere(2);
  popMatrix();
  popMatrix();

  //Plant
  fill(#16501C);
    pushMatrix();
  translate(-115, 200, 510 - plantZPos);
  box(10, 72, 0.5);
  popMatrix();
    pushMatrix();
  translate(-115, 200, 520 - plantZPos);
  box(10, 125, 0.5);
  popMatrix();
    pushMatrix();
  translate(-115, 235, 512 - plantZPos);
  box(10, 50, 0.5);
  popMatrix();
    pushMatrix();
  translate(-130, 210, 530 - plantZPos);
  box(10, 100, 0.5);
  popMatrix();
    pushMatrix();
  translate(-125, 210, 500 - plantZPos);
  box(0.5, 80, 10);
  popMatrix();
    pushMatrix();
  rotateY(PI/4);
  translate(-435 + (4 * plantZPos)/5, 225, 290 - plantZPos/1.5);
  box(0.5, 60, 10);
  popMatrix();
    pushMatrix();
  rotateY(PI/4);
  translate(-445 + (4 * plantZPos)/5, 205, 300 - plantZPos/1.5);
  box(0.5, 100, 10);
  popMatrix();
  fill(#3E2F2F);
    pushMatrix(); //soil
  translate(-115, 295, 520 - plantZPos);
  box(50, 80, 50);
  popMatrix();
  //Pot
  fill(150);
    pushMatrix(); //back
  translate(-145, 285, 520 - plantZPos);
  box(10, 100, 70);
  popMatrix();
    pushMatrix(); //front
  translate(-85, 285, 520 - plantZPos);
  box(10, 100, 70);
  popMatrix();
    pushMatrix(); //left
  translate(-115, 285, 550 - plantZPos);
  box(50, 100, 10);
  popMatrix();
    pushMatrix(); //side
  translate(-115, 285, 490 - plantZPos);
  box(50, 100, 10);
  popMatrix();

  //Crowbar
  fill(100);
    pushMatrix(); //handle
  translate(-169.5 - crowXPos, 332.5 + crowYPos, 620 - crowShow - crowZPos); //left x: -165     right x: -174
  box(9, 5, 100);
  popMatrix();
    pushMatrix();
  translate(-169.5 - crowXPos, 326 + crowYPos, 571 - crowShow - crowZPos);
  box(9, 8, 2);
  popMatrix();
    pushMatrix(); //left prong
  translate(-166.75 - crowXPos, 316 + crowYPos, 571 - crowShow - crowZPos);
  box(3.5, 20, 2);
  popMatrix();
    pushMatrix(); //right prong
  translate(-172.25 - crowXPos, 316 + crowYPos, 571 - crowShow - crowZPos);
  box(3.5, 20, 2);
  popMatrix();
}
//creating a camera for the game
class firstPersonCamera {
  PVector cameraPosition;
  PVector acceleration;

  firstPersonCamera() {
    //Default position of the camera
      cameraPosition = new PVector(270.65, 100, 741.2); //960, 590, 935.307      50.0 100.0, 86.60254
  }
  //transformations done to the camera
  void camTransformations() {
    // Camera rotations.
    pushMatrix();
    translate(cameraPosition.x, cameraPosition.y, cameraPosition.z);
    // Side to side movement
    rotateY(map(-mouseX, 0, width, 1000, 1010));
    translate(800, 0, 500);
    //to approximate the point where the camera should be looking at to best represent real-life perspective
    float x = modelX(0, 0, 0);
    float y = modelY(0, 0, 0);
    float z = modelZ(0, 0, 0);
    popMatrix();

    noCursor();

    // Setting the range from 0 to the height to the range of -200 to 1000 for better camera up and down movement.
    y = map(mouseY, 0, height, -200, 1000);
    //a camera is generated using the positions 
    camera(cameraPosition.x, cameraPosition.y, cameraPosition.z, x, y, z, 0, 1, 0);
    //Keep the camera confined within the room
    cameraPosition.x = constrain(cameraPosition.x, 0, 800);
    cameraPosition.z = constrain(cameraPosition.z, 0, 800);

    if (keyPressed) {
      if (key == 'w') { //moving forwards in the environment
        //Compute a vector that points from the camera to the mouse
        PVector targetPosition = new PVector(x, cameraPosition.y, z);
        PVector acceleration = PVector.sub(targetPosition, cameraPosition);
        // Set magnitude of acceleration
        acceleration.setMag(speed);

        // Location changes by acceleration
        cameraPosition.add(acceleration);
      } else if (key == 's') { //moving backwards in the environment
        PVector targetPosition = new PVector(x, cameraPosition.y, z);
        PVector acceleration = PVector.sub(targetPosition, cameraPosition);
        // Set magnitude of acceleration, negative for 's' because it reverses the direction of the vector
        acceleration.setMag(-speed);
        cameraPosition.add(acceleration);
      }
    }
    //current camera positions are then taken and are able to use for determining how far the player must be to be able to interact with objects
    camXPos = cameraPosition.x;
    camYPos = cameraPosition.y;
    camZPos = cameraPosition.z;
  }
}

//creating a timer for the game
class clockTimer {
  void startTimer() {
    startTime = millis(); //starting time in milliseconds at which the timer starts
    runningTimer = true;
  }
  int calculateTimeElapsed() {
    if (runningTimer == true) { //if the timer is running, the time that has passed since the timer has 
      timeElapsed = millis() - startTime; //started is the current number of milliseconds since the sketch has been run subtracted by the time at which the timer started
    } 
    return timeElapsed;
  }
  
  int numSeconds() {
    //Calculate seconds based on the time passed
    return (calculateTimeElapsed() / 1000) % 60;
  }
  
  int numMinutes() {
    //Calculate minutes based on the time passed
    return (calculateTimeElapsed() / (1000 * 60)) % 60;
  }
}
