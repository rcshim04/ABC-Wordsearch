//-----------------------------After Each WordSearch-----------------------------\\
void gameOver() {
  wordCount = 0;
  cursor(ARROW);
  if (gameTransition == 0) {
    if (screen == 5) {
      background(225, 240, 255);
      fill(240, 210, 210);
    } else if (screen == 6) {
      background(248, 203, 173);
      fill(169, 209, 142);
    } else if (screen == 7) {
      background(204, 204, 255);
      fill(157, 195, 230);
    }
    textFont(font1);
    textSize(1920/12);
    text("CONGRATULATIONS!", 1920/2, 1080/2);
    textSize(1920/25);
    if (timer) {
      text("You finished in "+(((storedMinutes-minutes-1)*60)+(60-seconds))+" seconds!", 1920/2, 1080/2+100);
    } else {
      text("You finished in "+seconds+" seconds!", 1920/2, 1080/2+100);
    }
    textSize(40);
    text("Click anywhere to continue", 1920/2, 1080/2+200);

    if (mousePressed) {
      delay(500);
      fade = 255;
      gameStarted = true;
      gameTransition = -1;
      if (pScreen >= 5 && pScreen < 7) {
        pScreen++;
      } else {
        pScreen = 5;
      }
      screen = pScreen;
    }
    if (screen == 5) {
      fill(225, 240, 255, fade);
    } else if (screen == 6) {
      fill(248, 203, 173, fade);
    } else if (screen == 7) {
      fill(204, 204, 255, fade);
    }
    noStroke();
    rect(1920/2, 1080/2, 1920, 1080);
    fade-=5;
  } else if (gameTransition == 1) {
    if (screen == 5) {
      background(225, 240, 255);
      fill(240, 210, 210);
    } else if (screen == 6) {
      background(248, 203, 173);
      fill(169, 209, 142);
    } else if (screen == 7) {
      background(204, 204, 255);
      fill(157, 195, 230);
    }
    textSize(1920/12);
    text("Too bad... Maybe next time", 1920/2, 1080/2);
    if (timer) {
      textSize(1920/25);
      text("You ran out of time...", 1920/2, 1080/2+100);
    }
    textSize(40);
    text("Click anywhere to continue", 1920/2, 1080/2+200);
    if (mousePressed) {
      delay(500);
      fade = 255;
      gameStarted = true;
    }
    if (screen == 5) {
      fill(225, 240, 255, fade);
    } else if (screen == 6) {
      fill(248, 203, 173, fade);
    } else if (screen == 7) {
      fill(204, 204, 255, fade);
    }
    noStroke();
    rect(1920/2, 1080/2, 1920, 1080);
    fade-=5;
  }
}

//----------------------------Before Each WordSearch-----------------------------\\
void gameBegin() {
  if (!timer) {
    seconds = 0;
  } else {
    minutes=storedMinutes; //Restores minute value to its original starting value
    seconds=storedSeconds; //Restores second value to its original starting value
  }
  pauseX = 0;
  pauseY = 0;
  if (screen == 5) {
    background(225, 240, 255);
    textFont(font1);
    textSize(1920/12);
    fill(240, 210, 210);
    text("Theme : Internet Safety", 1920/2, 1080/2);
    textSize(40);
    text("Click anywhere to continue", 1920/2, 1080/2+100);

    if (mousePressed) {
      delay(500);
      start = true;
      screen = 8;
      if (WSCount < 3) {
        WSCount++;
      } else {
        WSCount = 1;
      }
    }
    if (!gameStarted) {
      fill(255, 242, 204, fade);
    } else {
      fill(225, 240, 255, fade);
    }
    noStroke();
    rect(1920/2, 1080/2, 1920, 1080);
    fade-=5;
  } else if (screen == 6) {
    background(248, 203, 173);
    fill(169, 209, 142);
    textSize(1920/12);
    text("Theme : Programming Languages", 1920/2, 1080/2);
    fill(169, 209, 142);
    textSize(1920/50);
    text("Click anywhere to continue", 1920/2, 1080/2+100);

    if (mousePressed) {
      delay(500);
      start = true;
      screen = 9;
      if (WSCount <= 3) {
        WSCount++;
      } else {
        WSCount = 1;
      }
    }
    if (!gameStarted) {
      fill(255, 242, 204, fade);
    } else {
      fill(248, 203, 173, fade);
    }
    noStroke();
    rect(1920/2, 1080/2, 1920, 1080);
    fade-=5;
  } else if (screen == 7) {
    background(204, 204, 255);
    fill(157, 195, 230);
    textSize(1920/12);
    text("Theme : Programming Terms", 1920/2, 1080/2);
    fill(157, 195, 230);
    textSize(1920/50);
    text("Click anywhere to continue", 1920/2, 1080/2+100);

    if (mousePressed) {
      delay(500);
      start = true;
      screen = 10;
      if (WSCount <= 3) {
        WSCount++;
      } else {
        WSCount = 1;
      }
    }
    if (!gameStarted) {
      fill(255, 242, 204, fade);
    } else {
      fill(204, 204, 255, fade);
    }
    noStroke();
    rect(1920/2, 1080/2, 1920, 1080);
    fade-=5;
  }
}
