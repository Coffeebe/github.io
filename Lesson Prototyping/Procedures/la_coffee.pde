//more weird global thingy
PFont appFont;
float[]fontSize = new float[textDIVs];
String[] string = new String[textDivs];
void textsetupwater() {
  fontSize= shorterside;
  appFont=createFont("Arial", fontSize);
  for(int i=0; i<textDiVs; i++){
    fontsize[i] = shorterSide;
  }
  
  moreWater();
}//
void moreWater() {
  string[0]= "tea bag";
  string[1] = "coffee beans";
}//
void testsetupbean() {
  fontSize= shorterside;
  la_bean();
  la_bean2();
}//
void la_bean2() {
  for( int i=0;i<rectdivHeight.length; i++) {
    if (fontSize> rectdivHeight[i]) fontSize =rectdivHeight[i];
  }
}
void la_bean() {
  float harringtonaspectratio = 1;
  fontSize = fontSize * harringtonaspectratio;
  float fontSize_temp=fontSize;
  for ( int i=0; i<rectdivWidth.length; i++) {
    if ( textWidth(string[i]) > rectdivWidth[i]) {
      while ( textWidth(string[i]) > rectdivWidth[i]) {
        fontSize_temp = fontSize_temp*0.99;
        textFont(appFont, fontSize_temp);
      }
      fontSize =fontSize_temp;
    }
    //textFont(appFont, fontSize);
  }
}
void metalpipe(String text, float X, float Y, float W, float H) {
  metal();
  text(text, X, Y, W, H);
  pipe();
}//
void metal() {
  color tea =#0FF527;
  fill(tea);
  textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
}//
void pipe() {
  color coffee=#C98C29;
  fill(coffee);
}
