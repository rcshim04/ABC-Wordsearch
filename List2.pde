//--------------------------------Declare Arrays---------------------------------\\
String[] words2 = new String[15];
boolean[] foundWords2 = new boolean[15];
int[][] WSTiles2 = new int[160][2];

//------------------------Store Words and Found Data 2---------------------------\\
void words2() {
  words2[0] = "JAVA"; 
  words2[1] = "PYTHON"; 
  words2[2] = "BASIC"; 
  words2[3] = "CLANGUAGE"; 
  words2[4] = "PHP"; 
  words2[5] = "SWIFT";
  words2[6] = "BASETWO"; 
  words2[7] = "DELPHI";  
  words2[8] = "FORTRAN"; 
  words2[9] = "PASCAL"; 
  words2[10] = "WOLFRAM";
  words2[11] = "TYPESCRIPT";
  words2[12] = "PROCESSING";
  words2[13] = "TURING";
  words2[14] = "RUBY"; 
  for (int i = 0; i < 15; i++) {
    foundWords2[i] = false;
  }

  len = 1920/2-375;
  hgt = 1080/8-25;

  for (int r = 0; r < 160; r++) {
    if (r%16 == 0) {
      len = 1920/2-375;
      hgt+=50;
    }
    if (r==159) {
      len = 1920/2+375;
      hgt = 1080/8+475;
    }
    WSTiles2[r][0] = len;
    WSTiles2[r][1] = hgt;
    len+=50;
  }

  location2();
}
