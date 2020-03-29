PImage WS2;
//-----------------------------Second WordSearch---------------------------------\\
void wordSearch2() {
  image(WS2, 1920/2, 1080/2);
  if (mouseX > 1920/2-400 && mouseX < 1920/2+400 && mouseY > 1080/8 && mouseY < 1080/8+500) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
//---------------------------------Highlighter 2---------------------------------\\
void highlight2() {
  strokeCap(ROUND);
  strokeWeight(35);
  stroke(169, 209, 142, 150);
  if (wordNum >=0 && wordNum < 15) {
    if (selectWord == true) {
      if (mouseX > 1920/2-383 && mouseX < 1920/2+383 && mouseY > 1080/8+17 && mouseY < 1080/8+483) { //wordsearch bounding box
        line(loc2[wordNum][0], loc2[wordNum][1]-10, mouseX, mouseY);
      } else {
        if (mouseX < 1920/2-383 && mouseY < 1080/8+17) { //so the highlighter doesnt go beyond the wordsearch box
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2-382, 1080/8+18);
        } else if (mouseX > 1920/2+383 && mouseY < 1080/8+17) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2+382, 1080/8+18);
        } else if (mouseX < 1920/2-383 && mouseY > 1080/8+483) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2-382, 1080/8+482);
        } else if (mouseX > 1920/2+383 && mouseY > 1080/8+483) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2+382, 1080/8+482);
        } else if (mouseX < 1920/2-383) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2-382, mouseY);
        } else if (mouseX > 1920/2+383) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, 1920/2+382, mouseY);
        } else if (mouseY < 1080/8+17) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, mouseX, 1080/8+18);
        } else if (mouseY > 1080/8+483) {
          line(loc2[wordNum][0], loc2[wordNum][1]-10, mouseX, 1080/8+482);
        }
      }
    }
  }
  for (int word = 0; word < 15; word++) { //checks for found words
    if (foundWords2[word] == true) {
      strokeWeight(35);
      stroke(169, 209, 142, 150);
      line(loc2[word][0], loc2[word][1]-10, loc2[word][2], loc2[word][3]-10);
      strokeWeight(40);
      stroke(197, 224, 180);
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
    stroke(169, 209, 142, 150);
    if (mouseX > 1920/2-383 && mouseX < 1920/2+383 && mouseY > 1080/8+17 && mouseY < 1080/8+483) { //wordsearch bounding box
      line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], mouseX, mouseY);
    } else {
      if (mouseX < 1920/2-383 && mouseY < 1080/8+17) { //so the highlighter doesnt go beyond the wordsearch box
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2-382, 1080/8+18);
      } else if (mouseX > 1920/2+383 && mouseY < 1080/8+17) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2+382, 1080/8+18);
      } else if (mouseX < 1920/2-383 && mouseY > 1080/8+483) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2-382, 1080/8+482);
      } else if (mouseX > 1920/2+383 && mouseY > 1080/8+483) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2+382, 1080/8+482);
      } else if (mouseX < 1920/2-383) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2-382, mouseY);
      } else if (mouseX > 1920/2+383) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], 1920/2+382, mouseY);
      } else if (mouseY < 1080/8+17) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], mouseX, 1080/8+18);
      } else if (mouseY > 1080/8+483) {
        line(WSTiles2[highlightTile][0], WSTiles2[highlightTile][1], mouseX, 1080/8+482);
      }
    }
  }
  if (runOnce) { //word counter
    runOnce = false;
    wordCount++;
    wordNum = -1;
  }
}
