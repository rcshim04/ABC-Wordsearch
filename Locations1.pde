//-------------------------------Declare 2D Array--------------------------------\\
int[][] loc1 = new int[15][4];

//----------------------------Store Word Location 1------------------------------\\
void location1() {
  loc1[0][0] = 1920/2+25;
  loc1[1][0] = 1920/2-225;
  loc1[2][0] = 1920/2-75;
  loc1[3][0] = 1920/2-75;
  loc1[4][0] = 1920/2+225;
  loc1[5][0] = 1920/2-25;
  loc1[6][0] = 1920/2-125;
  loc1[7][0] = 1920/2+75;
  loc1[8][0] = 1920/2+175;
  loc1[9][0] = 1920/2+25;
  loc1[10][0] = 1920/2-175;
  loc1[11][0] = 1920/2+175;
  loc1[12][0] = 1920/2-75;
  loc1[13][0] = 1920/2+125;
  loc1[14][0] = 1920/2-175;

  loc1[0][1] = 1080/8+35;
  loc1[1][1] = 1080/8+35;
  loc1[2][1] = 1080/8+85;
  loc1[3][1] = 1080/8+235;
  loc1[4][1] = 1080/8+135;
  loc1[5][1] = 1080/8+385;
  loc1[6][1] = 1080/8+485;
  loc1[7][1] = 1080/8+85;
  loc1[8][1] = 1080/8+285;
  loc1[9][1] = 1080/8+435;
  loc1[10][1] = 1080/8+35;
  loc1[11][1] = 1080/8+35;
  loc1[12][1] = 1080/8+285;
  loc1[13][1] = 1080/8+485;
  loc1[14][1] = 1080/8+235;

  for (int x = 0; x < 15; x++) {
    if (x == 0 || x == 1 || x == 2 || x == 4 || x == 7 || x == 8 || x == 10 || x == 14) {
      loc1[x][2] = loc1[x][0];
      loc1[x][3] = loc1[x][1] + (words1[x].length()-1)*50;
    } else if (x == 3 || x == 9 || x == 12) {
      loc1[x][2] = loc1[x][0] + (words1[x].length()-1)*50;
      loc1[x][3] = loc1[x][1];
    } else if (x == 5 || x == 6 || x == 13) {
      loc1[x][2] = loc1[x][0];
      loc1[x][3] = loc1[x][1] - (words1[x].length()-1)*50;
    } else {
      loc1[x][2] = loc1[x][0] - (words1[x].length()-1)*50;
      loc1[x][3] = loc1[x][1] + (words1[x].length()-1)*50;
    }
  }
}

//----------Check for Start Location and End Location of Drag(Found)-------------\\
void mouseDragged() {
  if (screen == 8) {
    if (mousePressed && !selectWord && wordNum < 0) {
      if (mouseX < loc1[0][0]+25 && mouseX > loc1[0][0]-25 && mouseY < loc1[0][1]+15 && mouseY > loc1[0][1]-35) {
        wordNum = 0;
        selectWord = true;
      } else if (mouseX < loc1[1][0]+25 && mouseX > loc1[1][0]-25 && mouseY < loc1[1][1]+15 && mouseY > loc1[1][1]-35) {
        wordNum = 1;
        selectWord = true;
      } else if (mouseX < loc1[2][0]+25 && mouseX > loc1[2][0]-25 && mouseY < loc1[2][1]+15 && mouseY > loc1[2][1]-35) {
        wordNum = 2;
        selectWord = true;
      } else if (mouseX < loc1[3][0]+25 && mouseX > loc1[3][0]-25 && mouseY < loc1[3][1]+15 && mouseY > loc1[3][1]-35) {
        wordNum = 3;
        selectWord = true;
      } else if (mouseX < loc1[4][0]+25 && mouseX > loc1[4][0]-25 && mouseY < loc1[4][1]+15 && mouseY > loc1[4][1]-35) {
        wordNum = 4;
        selectWord = true;
      } else if (mouseX < loc1[5][0]+25 && mouseX > loc1[5][0]-25 && mouseY < loc1[5][1]+15 && mouseY > loc1[5][1]-35) {
        wordNum = 5;
        selectWord = true;
      } else if (mouseX < loc1[6][0]+25 && mouseX > loc1[6][0]-25 && mouseY < loc1[6][1]+15 && mouseY > loc1[6][1]-35) {
        wordNum = 6;
        selectWord = true;
      } else if (mouseX < loc1[7][0]+25 && mouseX > loc1[7][0]-25 && mouseY < loc1[7][1]+15 && mouseY > loc1[7][1]-35) {
        wordNum = 7;
        selectWord = true;
      } else if (mouseX < loc1[8][0]+25 && mouseX > loc1[8][0]-25 && mouseY < loc1[8][1]+15 && mouseY > loc1[8][1]-35) {
        wordNum = 8;
        selectWord = true;
      } else if (mouseX < loc1[9][0]+25 && mouseX > loc1[9][0]-25 && mouseY < loc1[9][1]+15 && mouseY > loc1[9][1]-35) {
        wordNum = 9;
        selectWord = true;
      } else if (mouseX < loc1[10][0]+25 && mouseX > loc1[10][0]-25 && mouseY < loc1[10][1]+15 && mouseY > loc1[10][1]-35) {
        wordNum = 10;
        selectWord = true;
      } else if (mouseX < loc1[11][0]+25 && mouseX > loc1[11][0]-25 && mouseY < loc1[11][1]+15 && mouseY > loc1[11][1]-35) {
        wordNum = 11;
        selectWord = true;
      } else if (mouseX < loc1[12][0]+25 && mouseX > loc1[12][0]-25 && mouseY < loc1[12][1]+15 && mouseY > loc1[12][1]-35) {
        wordNum = 12;
        selectWord = true;
      } else if (mouseX < loc1[13][0]+25 && mouseX > loc1[13][0]-25 && mouseY < loc1[13][1]+15 && mouseY > loc1[13][1]-35) {
        wordNum = 13;
        selectWord = true;
      } else if (mouseX < loc1[14][0]+25 && mouseX > loc1[14][0]-25 && mouseY < loc1[14][1]+15 && mouseY > loc1[14][1]-35) {
        wordNum = 14;
        selectWord = true;
      } else {
        for (int c = 0; c < 100; c++) {
          if (mouseX < WSTiles1[c][0]+25 && mouseX > WSTiles1[c][0]-25 && mouseY < WSTiles1[c][1]+25 && mouseY > WSTiles1[c][1]-25) {
            wordNum = 20;
            highlightTile = c;
            selectWord = true;
            highlight = true;
          }
        }
      }
    }
  } else if (screen == 9) {
    if (mousePressed && !selectWord && wordNum < 0) {
      if (mouseX < loc2[0][0]+25 && mouseX > loc2[0][0]-25 && mouseY < loc2[0][1]+15 && mouseY > loc2[0][1]-35) {
        wordNum = 0;
        selectWord = true;
      } else if (mouseX < loc2[1][0]+25 && mouseX > loc2[1][0]-25 && mouseY < loc2[1][1]+15 && mouseY > loc2[1][1]-35) {
        wordNum = 1;
        selectWord = true;
      } else if (mouseX < loc2[2][0]+25 && mouseX > loc2[2][0]-25 && mouseY < loc2[2][1]+15 && mouseY > loc2[2][1]-35) {
        wordNum = 2;
        selectWord = true;
      } else if (mouseX < loc2[3][0]+25 && mouseX > loc2[3][0]-25 && mouseY < loc2[3][1]+15 && mouseY > loc2[3][1]-35) {
        wordNum = 3;
        selectWord = true;
      } else if (mouseX < loc2[4][0]+25 && mouseX > loc2[4][0]-25 && mouseY < loc2[4][1]+15 && mouseY > loc2[4][1]-35) {
        wordNum = 4;
        selectWord = true;
      } else if (mouseX < loc2[5][0]+25 && mouseX > loc2[5][0]-25 && mouseY < loc2[5][1]+15 && mouseY > loc2[5][1]-35) {
        wordNum = 5;
        selectWord = true;
      } else if (mouseX < loc2[6][0]+25 && mouseX > loc2[6][0]-25 && mouseY < loc2[6][1]+15 && mouseY > loc2[6][1]-35) {
        wordNum = 6;
        selectWord = true;
      } else if (mouseX < loc2[7][0]+25 && mouseX > loc2[7][0]-25 && mouseY < loc2[7][1]+15 && mouseY > loc2[7][1]-35) {
        wordNum = 7;
        selectWord = true;
      } else if (mouseX < loc2[8][0]+25 && mouseX > loc2[8][0]-25 && mouseY < loc2[8][1]+15 && mouseY > loc2[8][1]-35) {
        wordNum = 8;
        selectWord = true;
      } else if (mouseX < loc2[9][0]+25 && mouseX > loc2[9][0]-25 && mouseY < loc2[9][1]+15 && mouseY > loc2[9][1]-35) {
        wordNum = 9;
        selectWord = true;
      } else if (mouseX < loc2[10][0]+25 && mouseX > loc2[10][0]-25 && mouseY < loc2[10][1]+15 && mouseY > loc2[10][1]-35) {
        wordNum = 10;
        selectWord = true;
      } else if (mouseX < loc2[11][0]+25 && mouseX > loc2[11][0]-25 && mouseY < loc2[11][1]+15 && mouseY > loc2[11][1]-35) {
        wordNum = 11;
        selectWord = true;
      } else if (mouseX < loc2[12][0]+25 && mouseX > loc2[12][0]-25 && mouseY < loc2[12][1]+12 && mouseY > loc2[12][1]-35) {
        wordNum = 12;
        selectWord = true;
      } else if (mouseX < loc2[13][0]+25 && mouseX > loc2[13][0]-25 && mouseY < loc2[13][1]+15 && mouseY > loc2[13][1]-35) {
        wordNum = 13;
        selectWord = true;
      } else if (mouseX < loc2[14][0]+25 && mouseX > loc2[14][0]-25 && mouseY < loc2[14][1]+15 && mouseY > loc2[14][1]-35) {
        wordNum = 14;
        selectWord = true;
      } else {
        for (int c = 0; c < 160; c++) {
          if (mouseX < WSTiles2[c][0]+25 && mouseX > WSTiles2[c][0]-25 && mouseY < WSTiles2[c][1]+25 && mouseY > WSTiles2[c][1]-25) {
            wordNum = 20;
            highlightTile = c;
            selectWord = true;
            highlight = true;
          }
        }
      }
    }
  } else if (screen == 10) {
    if (mousePressed && !selectWord && wordNum < 0) {
      if (mouseX < loc3[0][0]+25 && mouseX > loc3[0][0]-25 && mouseY < loc3[0][1]+15 && mouseY > loc3[0][1]-35) {
        wordNum = 0;
        selectWord = true;
      } else if (mouseX < loc3[1][0]+25 && mouseX > loc3[1][0]-25 && mouseY < loc3[1][1]+15 && mouseY > loc3[1][1]-35) {
        wordNum = 1;
        selectWord = true;
      } else if (mouseX < loc3[2][0]+25 && mouseX > loc3[2][0]-25 && mouseY < loc3[2][1]+15 && mouseY > loc3[2][1]-35) {
        wordNum = 2;
        selectWord = true;
      } else if (mouseX < loc3[3][0]+25 && mouseX > loc3[3][0]-25 && mouseY < loc3[3][1]+15 && mouseY > loc3[3][1]-35) {
        wordNum = 3;
        selectWord = true;
      } else if (mouseX < loc3[4][0]+25 && mouseX > loc3[4][0]-25 && mouseY < loc3[4][1]+15 && mouseY > loc3[4][1]-35) {
        wordNum = 4;
        selectWord = true;
      } else if (mouseX < loc3[5][0]+25 && mouseX > loc3[5][0]-25 && mouseY < loc3[5][1]+15 && mouseY > loc3[5][1]-35) {
        wordNum = 5;
        selectWord = true;
      } else if (mouseX < loc3[6][0]+25 && mouseX > loc3[6][0]-25 && mouseY < loc3[6][1]+15 && mouseY > loc3[6][1]-35) {
        wordNum = 6;
        selectWord = true;
      } else if (mouseX < loc3[7][0]+25 && mouseX > loc3[7][0]-25 && mouseY < loc3[7][1]+15 && mouseY > loc3[7][1]-35) {
        wordNum = 7;
        selectWord = true;
      } else if (mouseX < loc3[8][0]+25 && mouseX > loc3[8][0]-25 && mouseY < loc3[8][1]+15 && mouseY > loc3[8][1]-35) {
        wordNum = 8;
        selectWord = true;
      } else if (mouseX < loc3[9][0]+25 && mouseX > loc3[9][0]-25 && mouseY < loc3[9][1]+15 && mouseY > loc3[9][1]-35) {
        wordNum = 9;
        selectWord = true;
      } else if (mouseX < loc3[10][0]+25 && mouseX > loc3[10][0]-25 && mouseY < loc3[10][1]+15 && mouseY > loc3[10][1]-35) {
        wordNum = 10;
        selectWord = true;
      } else if (mouseX < loc3[11][0]+25 && mouseX > loc3[11][0]-25 && mouseY < loc3[11][1]+15 && mouseY > loc3[11][1]-35) {
        wordNum = 11;
        selectWord = true;
      } else if (mouseX < loc3[12][0]+25 && mouseX > loc3[12][0]-25 && mouseY < loc3[12][1]+12 && mouseY > loc3[12][1]-35) {
        wordNum = 12;
        selectWord = true;
      } else if (mouseX < loc3[13][0]+25 && mouseX > loc3[13][0]-25 && mouseY < loc3[13][1]+15 && mouseY > loc3[13][1]-35) {
        wordNum = 13;
        selectWord = true;
      } else if (mouseX < loc3[14][0]+25 && mouseX > loc3[14][0]-25 && mouseY < loc3[14][1]+15 && mouseY > loc3[14][1]-35) {
        wordNum = 14;
        selectWord = true;
      } else {
        for (int c = 0; c < 240; c++) {
          if (mouseX < WSTiles3[c][0]+25 && mouseX > WSTiles3[c][0]-25 && mouseY < WSTiles3[c][1]+25 && mouseY > WSTiles3[c][1]-25) {
            wordNum = 20;
            highlightTile = c;
            selectWord = true;
            highlight = true;
          }
        }
      }
    }
  }
}
void mouseReleased() {
  selectWord = false;
  if (screen == 8) {
    if (wordNum >= 0) { 
      if (!highlight && !foundWords1[wordNum] && !mousePressed && mouseX < loc1[wordNum][2]+25 && mouseX > loc1[wordNum][2]-25 && mouseY < loc1[wordNum][3]+15 && mouseY > loc1[wordNum][3]-35) {
        foundWords1[wordNum] = true;
        runOnce = true;
      } else {
        wordNum = -1;
        highlight = false;
      }
    }
  } else if (screen == 9) {
    if (wordNum >= 0) { 
      if (!highlight && !foundWords2[wordNum] && !mousePressed && mouseX < loc2[wordNum][2]+25 && mouseX > loc2[wordNum][2]-25 && mouseY <loc2[wordNum][3]+15 && mouseY > loc2[wordNum][3]-35) {
        foundWords2[wordNum] = true;
        runOnce = true;
      } else {
        wordNum = -1;
        highlight = false;
      }
    }
  } else if (screen == 10) {
    if (wordNum >= 0) { 
      if (!highlight && !foundWords3[wordNum] && !mousePressed && mouseX < loc3[wordNum][2]+25 && mouseX > loc3[wordNum][2]-25 && mouseY <loc3[wordNum][3]+15 && mouseY > loc3[wordNum][3]-35) {
        foundWords3[wordNum] = true;
        runOnce = true;
      } else {
        wordNum = -1;
        highlight = false;
      }
    }
  }
}
