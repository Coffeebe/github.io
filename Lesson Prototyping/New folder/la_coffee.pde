//more weird global thingy
PFont appFont;
float[]fontSize = new float[textDIVs];
String[] string = new String[textDIVs];

void textsetupwater() {
  
  appFont=createFont("Arial", fontSize);
  for(int i=0; i<textDIVs; i++){
    fontSize[i] = shorterSide;
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
float fontsize_espresso(float fontSize, int i){
  fontSize = textHeightespresso(fontSize, i);
  fontSize =textWidthespresso(fontSize, i);
  return fontsize;
}//
float textHeight_greentea(float fontSize, int i){
  if (font > rectDIVHeight[i]) fontSize =rectDIVHeight[i];
}//
float textWidth_yousuck(float fontSize, int i){
  float harringtonaspectratio= 1.04;
  fontSize= fontSize*harringtonAspectRatio;
  
  textfont(appFont, fontSize);
  float fontSize_temp=fontSize;
  if (textwidth(string[i])> rectdivWidth[i]) {
    fontSize_temp = fontSize_temp*0.99;
    textfont(appFont,fontSize_temp);
  }
  fontSize = fontSize_temp;

 return fontSize;
}
void metalpipe(float fontSize,String text, float X, float Y, float W, float H) {
  metal(fontSize);
  text(text, X, Y, W, H);
  pipe();
}//
void metal(float fontSize) {
  color tea =#0FF527;
  fill(tea);
  textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
}//
void pipe() {
  color coffee=#C98C29;
  fill(coffee);
}
