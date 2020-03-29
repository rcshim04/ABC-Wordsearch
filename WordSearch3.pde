PImage WS3;
//------------------------------Third WordSearch---------------------------------\\
void wordSearch3() {
  image(WS3, 1920/2, 1080/2);
  if (mouseX > 1920/2-500 && mouseX < 1920/2+500 && mouseY > 1080/8-50 && mouseY < 1080/8+550) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
//---------------------------------Highlighter 3---------------------------------\\
void highlight3() {
  strokeCap(ROUND);
  strokeWeight(35);
  stroke(157, 195, 230, 150);
  if (wordNum >=0 && wordNum < 15) {
    if (selectWord == true) {
      if (mouseX > 1920/2-483 && mouseX < 1920/2+483 && mouseY > 1080/8-33 && mouseY < 1080/8+533) { //wordsearch bounding box
        line(loc3[wordNum][0], loc3[wordNum][1]-10, mouseX, mouseY);
      } else {
        if (mouseX < 1920/2-483 && mouseY < 1080/8-33) { //so the highlighter doesnt go beyond the wordsearch box
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2-482, 1080/8-32);
        } else if (mouseX > 1920/2+483 && mouseY < 1080/8-33) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2+482, 1080/8-32);
        } else if (mouseX < 1920/2-483 && mouseY > 1080/8+533) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2-482, 1080/8+532);
        } else if (mouseX > 1920/2+483 && mouseY > 1080/8+533) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2+482, 1080/8+532);
        } else if (mouseX < 1920/2-483) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2-482, mouseY);
        } else if (mouseX > 1920/2+483) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, 1920/2+482, mouseY);
        } else if (mouseY < 1080/8-33) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, mouseX, 1080/8-32);
        } else if (mouseY > 1080/8+533) {
          line(loc3[wordNum][0], loc3[wordNum][1]-10, mouseX, 1080/8+532);
        }
      }
    }
  }
  for (int word = 0; word < 15; word++) { //checks for found words
    if (foundWords3[word] == true) {
      strokeWeight(35);
      stroke(157, 195, 230, 150);
      line(loc3[word][0], loc3[word][1]-10, loc3[word][2], loc3[word][3]-10);
      strokeWeight(40);
      stroke(222, 235, 247);
      if (word >=0 && word < 5) {
        line(1920/2-520, 1080*3/4+40+word*50, 1920/2-200, 1080*3/4+40+word*50);
      } else if (word >=5 && word < 10) {
        line(1920/2-160, 1080*3/4+40+(word-5)*50, 1920/2+160, 1080*3/4+40+(word-5)*50);
      } else if (word >=10 && word < 15) {
        line(1920/2+200, 1080*3/4+40+(word-10)*50, 1920/2+520, 1080*3/4+40+(word-10)*50);
      }
    }
  }
  if (highlight) {
    strokeWeight(35);
    stroke(157, 195, 230, 150);
    if (mouseX > 1920/2-483 && mouseX < 1920/2+483 && mouseY > 1080/8-33 && mouseY < 1080/8+533) { //wordsearch bounding box
      line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], mouseX, mouseY);
    } else {
      if (mouseX < 1920/2-483 && mouseY < 1080/8-33) { //so the highlighter doesnt go beyond the wordsearch box
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2-482, 1080/8-32);
      } else if (mouseX > 1920/2+483 && mouseY < 1080/8-33) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2+482, 1080/8-32);
      } else if (mouseX < 1920/2-483 && mouseY > 1080/8+533) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2-482, 1080/8+532);
      } else if (mouseX > 1920/2+483 && mouseY > 1080/8+533) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2+482, 1080/8+532);
      } else if (mouseX < 1920/2-483) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2-482, mouseY);
      } else if (mouseX > 1920/2+483) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], 1920/2+482, mouseY);
      } else if (mouseY < 1080/8-33) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], mouseX, 1080/8-32);
      } else if (mouseY > 1080/8+533) {
        line(WSTiles3[highlightTile][0], WSTiles3[highlightTile][1], mouseX, 1080/8+532);
      }
    }
  }
  if (runOnce) { //word counter
    runOnce = false;
    wordCount++;
    wordNum = -1;
  }
}
