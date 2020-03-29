//---------------------------------Splash Screen---------------------------------\\
void splashScreen() {
  //Animation
  textFont(font1);
  if (sLetterCount > 0) {
    delay(60);
    textSize(400);
    fill(255, 242, 204);
    rect(1920/2, 1080/2-50, 1000, 500);

    //Random Letter Generator
    fill(255, 51, 0);
    text(char(int(random(65, 91))), 1920/2-370, 1080/2);
    fill(112, 173, 71);
    text(char(int(random(65, 91))), 1920/2-200, 1080/2);
    fill(91, 155, 213);
    text(char(int(random(65, 91))), 1920/2-45, 1080/2);
    textSize(200);
    fill(237, 125, 49);
    text(char(int(random(65, 91))), 1920/2-390, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2-285, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2-200, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2-110, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2-20, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2+55, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2+125, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2+210, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2+290, 1080/2+170);
    text(char(int(random(65, 91))), 1920/2+370, 1080/2+170);
    textSize(40);
    fill(255, 202, 33);
    text("Press SPACE to continue", 1920/2-20, 1080/2+280);
    textFont(font2);
    textSize(15);
    text("A widescreen FHD resolution screen is recommended", 1920/2-20, 1080-70);
    text("(1920x1080p, 16:9 aspect ratio)", 1920/2-20, 1080-50);
    fill(255, 242, 204, fade+80);
    rect(1920/2, 1080/2+350, 750, 350);
    fill(255, 242, 204, fade);
    rect(1920/2, 1080/2-50, 1000, 500);
    sLetterCount--; //randomizer cycles
    fade-=7; //fades in
  } else {
    fill(255, 242, 204);
    rect(1920/2, 1080/2-50, 1000, 500);
    textSize(400);
    fill(255, 51, 0);
    text("A", 1920/2-370, 1080/2);
    fill(112, 173, 71);
    text("B", 1920/2-200, 1080/2);
    fill(91, 155, 213);
    text("C", 1920/2-45, 1080/2);
    fill(237, 125, 49);
    textSize(200);
    text("WORDSEARCH", 1920/2-20, 1080/2+170);

    if (keyPressed) {
      if (key == 32) {
        fade = 255; //reset fade
        screen=1; //main menu
      }
    }
  }
}

//-------------------------------------Menu--------------------------------------\\
void mainMenu() {
  background(255, 242, 204);
  stroke(255, 217, 102);
  strokeWeight(10);
  textAlign(CENTER);

  //Button Interactions

  //instructions
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2-20 && mouseY > 1080/2-140) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      screen = 2;
      fade = 255;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2-80, 600, 120, 30);

  //play
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2+140 && mouseY > 1080/2+20) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      screen = 3;
      fade = 255;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2+80, 600, 120, 30);

  //exit
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2+300 && mouseY > 1080/2+180) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      screen = 14;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2+240, 600, 120, 30);

  fill(255, 202, 33);
  textSize(150);
  text("Main Menu", 1920/2, 1080/2-180);
  textSize(60);
  text("Instructions", 1920/2, 1080/2-55);
  text("Play", 1920/2, 1080/2+105);
  text("Exit", 1920/2, 1080/2+265);
  noStroke();
  fill(255, 242, 204, fade);
  rect(1920/2, 1080/2, 650, 800);
  fade-=5;
}

//---------------------------------Instructions----------------------------------\\
void instructions() {
  textAlign(CENTER);
  background(255, 242, 204);
  stroke(255, 217, 102);
  //Button Interactions

  //back to main menu
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080-90 && mouseY > 1080-210) {
    fill(255, 224, 125);
    if (mousePressed && mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080-90 && mouseY > 1080-210) {
      delay(500);
      screen = 1;
      fade = 255;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080-150, 600, 120, 30);
  fill(255, 202, 33);
  textSize(60);
  text("Main Menu", 1920/2, 1080-125);
  textSize(150);
  text("Instructions", 1920/2, 200);

  textSize(30);
  textAlign(LEFT);
  text("This is your classic newspaper word search…but digital! Play through 3 randomized word searches, all with different skill levels and themes.", 1920/2, 400, 1200, 100);
  text("To begin, return to main menu and press play. There, choose what mode you would like to play. To find words, simply drag across the word you have found. You must drag from the start to the end of the word. Drag slowly!", 1920/2, 550, 1200, 100);
  text("A mouse is recommended.", 1920/2, 700, 1200, 100);
  fill(255, 242, 204, fade);
  noStroke();
  rect(1920/2, 1080/2, 1920, 1080);
  fade-=5;
}

//----------------------------------Exit Popup-----------------------------------\\
void goodbyePopup() {
  background(255, 240, 197);
  stroke(255, 230, 140);
  fill(255, 235, 175);
  rect(1920/2, 1080/2, 900, 600, 30);
  fill(255, 202, 33);
  text("Are you sure you want to quit?", 1920/2, 1080/2-150);

  //Button Interactions

  //yes
  stroke(255, 217, 102);
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2+40 && mouseY > 1080/2-80) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      screen = 15;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2-20, 600, 120, 30);

  //no
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2+200 && mouseY > 1080/2+80) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      screen = 1;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2+140, 600, 120, 30);

  fill(255, 202, 33);
  textSize(60);
  text("Yes", 1920/2, 1080/2+5);
  text("No", 1920/2, 1080/2+165);
}
//-------------------------------------Exit--------------------------------------\\
void goodbye() {
  background(255, 242, 204);
  textSize(70);
  text("This game was programmed by Eric Shim from WLMCI", 1920/2, 1080/2);
  textSize(50);
  text("Click anywhere to exit", 1920/2, 1080/2+90);
  textSize(100);
  text("ISP", 1920/2, 1080/2+250);
  screen = 16;
}

//-------------------------------------Mode--------------------------------------\\
void mode() {
  background(255, 242, 204);
  stroke(255, 217, 102);
  //Button Interactions

  //untimed game mode
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2-20 && mouseY > 1080/2-140) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      timer = false;
      screen = pScreen;
      fade = 255;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2-80, 600, 120, 30);

  //timed game mode
  if (mouseX < 1920/2+300 && mouseX > 1920/2-300 && mouseY < 1080/2+240 && mouseY > 1080/2+120) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = 4;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2, 1080/2+180, 600, 120, 30);

  //main menu
  if (mouseX < 1920-50 && mouseX > 1920-350 && mouseY < 1080-35 && mouseY > 1080-165) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = 1;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920-200, 1080-100, 300, 130, 30);
  fill(255, 202, 33);
  textSize(150);
  text("Game Mode", 1920/2, 1080/2-180);
  textSize(60);
  text("Untimed", 1920/2, 1080/2-55);
  text("Timed", 1920/2, 1080/2+205);
  text("Main Menu", 1920-200, 1080-75);
  textSize(40);
  text("Unlimited time period. Peaceful.", 1920/2, 1080/2+30);
  text("Complete each word search in a set period of time. Challenge yourself.", 1920/2, 1080/2+290);

  fill(255, 242, 204, fade);
  noStroke();
  rect(1920/2, 1080/2, 1920, 1080);
  fade-=5;
}

//-----------------------------------Timer Set-----------------------------------\\
void timed() {
  background(255, 242, 204);
  stroke(255, 217, 102);
  //Button Interactions

  //30 seconds
  if (mouseX < 1920/2-20 && mouseX > 1920/2-220 && mouseY < 1080/2+15 && mouseY > 1080/2-115) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=0;
      seconds=30;
      storedMinutes=minutes;
      storedSeconds=seconds;

    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2-120, 1080/2-50, 200, 130, 30);

  //45 seconds
  if (mouseX < 1920/2+220 && mouseX > 1920/2+20 && mouseY < 1080/2+15 && mouseY > 1080/2-115) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=0;
      seconds=45;
      storedMinutes=minutes;
      storedSeconds=seconds;

    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2+120, 1080/2-50, 200, 130, 30);

  //2 minutes
  if (mouseX < 1920/2-20 && mouseX > 1920/2-220 && mouseY < 1080/2+215 && mouseY > 1080/2+85) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=2;
      seconds=0;
      storedMinutes=minutes;
      storedSeconds=seconds;

    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2-120, 1080/2+150, 200, 130, 30);

  //5 minutes
  if (mouseX < 1920/2+220 && mouseX > 1920/2+20 && mouseY < 1080/2+215 && mouseY > 1080/2+85) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=5;
      seconds=0;
      storedMinutes=minutes;
      storedSeconds=seconds;

    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2+120, 1080/2+150, 200, 130, 30);

  //15 seconds
  if (mouseX < 1920/2-260 && mouseX > 1920/2-460 && mouseY < 1080/2+15 && mouseY > 1080/2-115) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=0;
      seconds=15;
      storedMinutes=minutes;
      storedSeconds=seconds;

    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2-360, 1080/2-50, 200, 130, 30);

  //1 minute 30
  if (mouseX < 1920/2-260 && mouseX > 1920/2-460 && mouseY < 1080/2+215 && mouseY > 1080/2+85) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=1;
      seconds=30;
      storedMinutes=minutes;
      storedSeconds=seconds;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2-360, 1080/2+150, 200, 130, 30);

  //1 minute
  if (mouseX < 1920/2+460 && mouseX > 1920/2+260 && mouseY < 1080/2+15 && mouseY > 1080/2-115) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=1;
      seconds=0;
      storedMinutes=minutes;
      storedSeconds=seconds;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2+360, 1080/2-50, 200, 130, 30);

  //10 minutes
  if (mouseX < 1920/2+460 && mouseX > 1920/2+260 && mouseY < 1080/2+215 && mouseY > 1080/2+85) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = pScreen;
      minutes=10;
      seconds=0;
      storedMinutes=minutes;
      storedSeconds=seconds;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920/2+360, 1080/2+150, 200, 130, 30);

  //back to game mode
  if (mouseX < 1920-50 && mouseX > 1920-350 && mouseY < 1080-35 && mouseY > 1080-165) {
    fill(255, 224, 125);
    if (mousePressed) {
      delay(500);
      fade = 255;
      screen = 3;
    }
  } else {
    fill(255, 230, 153);
  }
  rect(1920-200, 1080-100, 300, 130, 30);



  fill(255, 202, 33);
  textSize(150);
  text("Set Timer", 1920/2, 1080/2-250);
  textSize(60);
  text("00:15", 1920/2-360, 1080/2-25);
  text("00:30", 1920/2-120, 1080/2-25);
  text("00:45", 1920/2+120, 1080/2-25);
  text("01:00", 1920/2+360, 1080/2-25);
  text("01:30", 1920/2-360, 1080/2+175);
  text("02:00", 1920/2-120, 1080/2+175);
  text("05:00", 1920/2+120, 1080/2+175);
  text("10:00", 1920/2+360, 1080/2+175);

  textSize(40);
  text("Back to Game Mode", 1920-200, 1080-83);

  timer = true;
  fill(255, 242, 204, fade);
  noStroke();
  rect(1920/2, 1080/2, 1920, 1080);
  fade-=5;
}


//---------------------------------Timer Display---------------------------------\\
void timer() {
  textFont(font1);
  if (timer) {
    if (minutes >= 0 && seconds >= 0) {
      if (screen == 8) {
        stroke(240, 210, 210);
        fill(255, 225, 225);
      } else if (screen == 9) {
        stroke(169, 209, 142);
        fill(197, 224, 180);
      } else if (screen == 10) {
        stroke(157, 195, 230);
        fill(222, 235, 247);
      }
      strokeWeight(8);
      rect(1920/2-550, 1080-270, 150, 100, 30);
      noStroke();
      rect(1920/2-550, 1080-270, 130, 80);
      if (screen == 8) {
        fill(240, 210, 210);
      } else if (screen == 9) {
        fill(169, 209, 142);
      } else if (screen == 10) {
        fill(157, 195, 230);
      }
      textSize(60);
      text(nf(minutes, 2)+":"+nf(seconds, 2), 1920/2-550, 1080-245);
      if (frameCount%60 == 0) {
        if (seconds <= 0) {
          seconds = 60;
          minutes--;
        }
        seconds--;
        if (minutes < 0 && seconds < 60) {
          if (screen == 8) {
            stroke(240, 210, 210);
            fill(255, 225, 225);
          } else if (screen == 9) {
            stroke(169, 209, 142);
            fill(197, 224, 180);
          } else if (screen == 10) {
            stroke(157, 195, 230);
            fill(222, 235, 247);
          }
          rect(200, 1080-100, 300, 130, 30);
          if (screen == 8) {
            fill(240, 210, 210);
            screen = pScreen;
          } else if (screen == 9) {
            fill(169, 209, 142);
            screen = 6;
          } else if (screen == 10) {
            fill(157, 195, 230);
            screen = 7;
          }
          text("00:00", 200, 1080-75);
          gameTransition = 1;
          game = false;
          fade = 255;
        }
      }
    }
  } else {
    if (frameCount%60 == 0) {
      seconds++;
    }
  }
}
//------------------------------Pause Popup Menu---------------------------------\\
void options() {
  strokeWeight(6);
  rectMode(CENTER);
  if (screen == 8) {
    fill(255, 225, 225);
    stroke(240, 210, 210);
  } else if (screen == 9) {
    fill(197, 224, 180);
    stroke(169, 209, 142);
  } else if (screen == 10) {
    fill(222, 235, 247);
    stroke(157, 195, 230);
  }
  if (mouseX > 1920-125+pauseX && mouseX < 1920-50 && mouseY > 50 && mouseY < 125+pauseY) {
    rectMode(CORNERS);
    rect(1920-50, 50, 1920-125+pauseX, 125+pauseY, 20);
    if (pauseX > -150 && pauseY < 225) {
      pauseX-=10;
      pauseY+=15;
    } else {
      if (mouseX > 1920-257 && mouseX < 1920-67 && mouseY > 140 && mouseY < 190) {
        if (screen == 8) {
          if (mousePressed) {
            delay(500);
            screen = 5;
            fade = 255;
            gameStarted = true;
          }
          fill(255, 220, 220);
        } else if (screen == 9) {
          if (mousePressed) {
            delay(500);
            screen = 6;
            fade = 255;
            gameStarted = true;
          }
          fill(177, 214, 160);
        } else if (screen == 10) {
          if (mousePressed) {
            delay(500);
            screen = 7;
            fade = 255;
            gameStarted = true;
          }
          fill(212, 225, 247);
        }
      } else {
        if (screen == 8) {
          fill(255, 225, 225);
        } else if (screen == 9) {
          fill(197, 224, 180);
        } else if (screen == 10) {
          fill(222, 235, 247);
        }
      }
      rectMode(CENTER);
      rect(1920-162, 165, 190, 50, 20);
      if (mouseX > 1920-257 && mouseX < 1920-67 && mouseY > 215 && mouseY < 265) {
        if (screen == 8) {
          fill(255, 220, 220);
        } else if (screen == 9) {
          fill(177, 214, 160);
        } else if (screen == 10) {
          fill(212, 225, 247);
        }
        if (mousePressed) {
          delay(500);
          game = false;
          fade = 255;
          screen = 1;
          wordCount = 0;
        }
      } else {
        if (screen == 8) {
          fill(255, 225, 225);
        } else if (screen == 9) {
          fill(197, 224, 180);
        } else if (screen == 10) {
          fill(222, 235, 247);
        }
      }
      rect(1920-162, 240, 190, 50, 20);
      if (screen == 8) {
        fill(240, 210, 210);
      } else if (screen == 9) {
        fill(169, 209, 142);
      } else if (screen == 10) {
        fill(157, 195, 230);
      }

      textSize(30);
      text("Options", 1920-162, 115);
      text("Restart", 1920-162, 175);
      text("Main Menu", 1920-162, 250);
      text(wordCount+"/15 Words Found", 1920-162, 340);
    }
  } else {
    rectMode(CORNERS);
    rect(1920-50, 50, 1920-125+pauseX, 125+pauseY, 20);
    if (pauseX < 0 && pauseY > 0) {
      pauseX+=10;
      pauseY-=15;
    } else {
      strokeWeight(12);
      point(1920-70, 87);
      point(1920-87.5, 87);
      point(1920-105, 87);
    }
  }
  rectMode(CENTER);
}
