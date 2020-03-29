//--------------------------------Declare Arrays---------------------------------\\
String[] words3 = new String[15];
boolean[] foundWords3 = new boolean[15];
int[][] WSTiles3 = new int[240][2];

//------------------------Store Words and Found Data 3---------------------------\\
void words3() {
  words3[0] = "ARRAY"; 
  words3[1] = "STRING"; 
  words3[2] = "FOR"; 
  words3[3] = "WHILE"; 
  words3[4] = "DRAW"; 
  words3[5] = "FRAMERATE";
  words3[6] = "CONDITIONALS"; 
  words3[7] = "PRIMITIVE VARIABLES";  
  words3[8] = "ITERATION"; 
  words3[9] = "LOOPS"; 
  words3[10] = "JAVA";
  words3[11] = "ERROR";
  words3[12] = "INPUT";
  words3[13] = "OUTPUT";
  words3[14] = "FUNCTION"; 
  for (int i = 0; i < 15; i++) {
    foundWords3[i] = false;
  }
  
  len = 1920/2-475;
  hgt = 1080/8-75;

  for (int r = 0; r < 240; r++) {
    if (r%20 == 0) {
      len = 1920/2-475;
      hgt+=50;
    }
    if (r==239) {
      len = 1920/2+475;
      hgt = 1080/8+525;
    }
    WSTiles3[r][0] = len;
    WSTiles3[r][1] = hgt;
    len+=50;
  }

  location3();
}
