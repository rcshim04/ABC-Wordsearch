PImage WS1;
//------------------------------First WordSearch---------------------------------\\
void wordSearch1() {
  image(WS1, 1920/2, 1080/2);
  if (mouseX > 1920/2-250 && mouseX < 1920/2+250 && mouseY > 1080/8 && mouseY < 1080/8+500) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
//---------------------------------Highlighter 1---------------------------------\\
void highlight1() {
  strokeCap(ROUND);
  strokeWeight(35);
  stroke(255, 179, 204, 160);
  if (wordNum >=0 && wordNum < 15) {
    if (selectWord == true) {
      if (mouseX > 1920/2-233 && mouseX < 1920/2+233 && mouseY > 1080/8+17 && mouseY < 1080/8+483) { //wordsearch bounding box
        line(loc1[wordNum][0], loc1[wordNum][1]-10, mouseX, mouseY);
      } else {
        if (mouseX < 1920/2-233 && mouseY < 1080/8+17) { //so the highlighter doesnt go beyond the wordsearch box
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2-232, 1080/8+18);
        } else if (mouseX > 1920/2+233 && mouseY < 1080/8+17) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2+232, 1080/8+18);
        } else if (mouseX < 1920/2-233 && mouseY > 1080/8+483) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2-232, 1080/8+482);
        } else if (mouseX > 1920/2+233 && mouseY > 1080/8+483) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2+232, 1080/8+482);
        } else if (mouseX < 1920/2-233) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2-232, mouseY);
        } else if (mouseX > 1920/2+233) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, 1920/2+232, mouseY);
        } else if (mouseY < 1080/8+17) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, mouseX, 1080/8+18);
        } else if (mouseY > 1080/8+483) {
          line(loc1[wordNum][0], loc1[wordNum][1]-10, mouseX, 1080/8+482);
        }
      }
    }
  }
  for (int word = 0; word < 15; word++) { //checks for found words
    if (foundWords1[word] == true) {
      strokeWeight(35);
      stroke(255, 179, 204, 160);
      line(loc1[word][0], loc1[word][1]-10, loc1[word][2], loc1[word][3]-10);
      strokeWeight(40);
      stroke(255, 225, 225);
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
    stroke(255, 179, 204, 160);
    if (mouseX > 1920/2-233 && mouseX < 1920/2+233 && mouseY > 1080/8+17 && mouseY < 1080/8+483) { //wordsearch bounding box
      line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], mouseX, mouseY);
    } else {
      if (mouseX < 1920/2-233 && mouseY < 1080/8+17) { //so the highlighter doesnt go beyond the wordsearch box
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2-232, 1080/8+18);
      } else if (mouseX > 1920/2+233 && mouseY < 1080/8+17) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2+232, 1080/8+18);
      } else if (mouseX < 1920/2-233 && mouseY > 1080/8+483) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2-232, 1080/8+482);
      } else if (mouseX > 1920/2+233 && mouseY > 1080/8+483) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2+232, 1080/8+482);
      } else if (mouseX < 1920/2-233) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2-232, mouseY);
      } else if (mouseX > 1920/2+233) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], 1920/2+232, mouseY);
      } else if (mouseY < 1080/8+17) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], mouseX, 1080/8+18);
      } else if (mouseY > 1080/8+483) {
        line(WSTiles1[highlightTile][0], WSTiles1[highlightTile][1], mouseX, 1080/8+482);
      }
    }
  }

  if (runOnce) { //word counter
    runOnce = false;
    wordCount++;
    wordNum = -1;
  }
}
