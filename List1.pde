//--------------------------------Declare Arrays---------------------------------\\
String[] words1 = new String[15];
boolean[] foundWords1 = new boolean[15];
int[][] WSTiles1 = new int[100][2];

//------------------------Store Words and Found Data 1---------------------------\\
void words1() {
  words1[0] = "PROXY";
  words1[1] = "CYBERBULLY";
  words1[2] = "PHISHING";
  words1[3] = "SPYWARE";
  words1[4] = "PREDATOR";
  words1[5] = "SNAPCHAT";
  words1[6] = "IDENTITY";
  words1[7] = "MALWARE";
  words1[8] = "SCAM";
  words1[9] = "SPAM";
  words1[10] = "INFO";
  words1[11] = "HOAX";
  words1[12] = "HARASS";
  words1[13] = "HACK";
  words1[14] = "SECURE";
  for (int i = 0; i < 15; i++) {
    foundWords1[i] = false;
  }

  len = 1920/2-225;
  hgt = 1080/8-25;

  for (int r = 0; r < 100; r++) {
    if (r%10 == 0) {
      len = 1920/2-225;
      hgt+=50;
    }
    if (r == 99) {
      len = 1920/2+225;
      hgt = 1080/8+475;
    }
    WSTiles1[r][0] = len;
    WSTiles1[r][1] = hgt;
    len+=50;
  }

  location1();
}
