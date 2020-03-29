//Eric Shim
//January 2019
//Mr. Rosen
//A digital wordsearch game

//------------------------------Declaration Section------------------------------\\
int screen = 0; //Display Variable
int sLetterCount = 40; //Random letter counter
int fade; //Transitional fade (alpha)
PFont font1, font2;
int minutes, storedMinutes; //storedMinutes is a temporary store of the minute value that the program can refer back to if the timer needs to restart
int seconds, storedSeconds; //storedSeconds is a temporary store of the second value that the program can refer back to if the timer needs to restart
int h, l, wordCount = 0, wordNum = -1; //h is the vertical directional values of the hidden words, l is the horizontal directional values of the hidden words, wordCount counts how many words were found and wordNum tells the program what word is found
int gameTransition = -1; //Transitional screen value before and after each wordseach
boolean start; //used to draw the wordsearch functions once at the beginning of the round, acts as a void setup within void draw
boolean game; //if game has started
boolean timer; //if timer mode has been chosen
boolean runOnce = false; //similar to start, but for word counter
boolean gameStarted = false; //used to check the fade colour transition, from menu or game
boolean selectWord = false; //used to check if a word has been selected
boolean highlight = false; //if a tile other than a hidden word is selected
int highlightTile; //tile number
int hgt, len; //used to assign every single tile coordinate
int pScreen = 5;
int WSCount = 0; //counts number of wordsearches played
int pauseX, pauseY; //for pause menu, growing and shrinking menu UI

//--------------------------------------Setup------------------------------------\\
void setup() {
  fullScreen();
  //size(800, 500);
  background(255, 242, 204);
  font1 = createFont("American Captain.ttf", 400);
  font2 = createFont("Helvetica-Bold.ttf", 30);
  WS1 = loadImage("WS1.png");
  WS2 = loadImage("WS2.png");
  WS3 = loadImage("WS3.png");
  textAlign(CENTER);
  imageMode(CENTER);
  noStroke();
  rectMode(CENTER);
  fade=255;
}

//---------------------------------Screen Change---------------------------------\\
void draw() {
  if (screen==0) {
    splashScreen();
  } else if (screen==1) {
    mainMenu();
  } else if (screen==2) {
    instructions();
  } else if (screen==3) {
    mode();
  } else if (screen==4) {
    timed();
  } else if (screen == 5 || screen == 6 || screen == 7) {
    if (gameTransition >= 0) {
      gameOver();
    } else {
      gameBegin();
    }
  } else if (screen==8) {
    wordSearch1();
    if (start) {
      start = false;
      game = true;
      words1();
    }
  } else if (screen==9) {
    wordSearch2();
    if (start) {
      start = false;
      game = true;
      words2();
    }
  } else if (screen==10) {
    wordSearch3();
    if (start) {
      start = false;
      game = true;
      words3();
    }
  } else if (screen==14) {
    goodbyePopup();
  } else if (screen==15) {
    goodbye();
  } else if (screen==16) {
    if (mousePressed == true) {
      exit();
    }
  }
  if (game) {
    if (screen==8) {
      highlight1();
    } else if (screen==9) {
      highlight2();
    } else if (screen==10) {
      highlight3();
    }
    timer();
    if (wordCount == 15) {
      gameTransition = 0;
      game = false;
      fade = 255;
      wordCount = 0;
      if (screen == 8) {
        screen = 5;
      } else if (screen == 9) {
        screen = 6;
      } else if (screen == 10) {
        screen = 7;
      }
    }
    options();
    if (WSCount > 3) {
      WSCount = 0;
    }
  }
}
