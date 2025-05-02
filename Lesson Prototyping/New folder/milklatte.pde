// static to procedural lesson
//weird global thingy
int shorterside;
int textDIVs = 2;
float[] footerdivX = new float[textDIVs];
float[] footerdivY= new float[textDIVs];
float[] titledivX = new float[textDIVs];
float[] titledivY = new float[textDIVs];
float[] rectdivWidth = new float[textDIVs];
float[] rectdivHeight = new float[textDIVs];
//textFont(titleFont,fontSize);
void setup(){
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int shorterSide =(appWidth >= appHeight) ? appHeight : appWidth ;
   PFont titlefont = createFont("ArialMT",shorterSide);
  textsetupwater();

  titledivX[0]=titledivX[1]= appWidth*1/4;
  titledivY[0] = appHeight*1/4;
  rectdivWidth[0] = appWidth*1/2;
  rectdivHeight[0]= appHeight*1/10;
  footerdivX[1]= appWidth*1/4;
  footerdivY[1]= appHeight*3/4;
  rectdivWidth[1]= appWidth*1/2;
  rectdivHeight[1]= appHeight*1/10;
  rect(titledivX[0], titledivY[0], rectdivWidth[0], rectdivHeight[0]);
  rect(footerdivX[1], footerdivY[1], rectdivWidth[1], rectdivHeight[1]);
 for(int i=0; i<textDIVs;i++) {
   fontSize[i] = fontSizealgorithm(fontSize[i],i);
  textdraw( fontSize[i], string[i], rectdivWidth[i],rectdivHeight[i]);
   //rect(titledivX[i], titledivY[i], rectdivWidth[i], rectdivHeight[i]);
  //textFont(titlefont, fontSize);

  //ext(titleX, titleY, rectdivWidth[0], rectdivHeight[0]);
  //text(footerX, footerY, rectdivWidth[1], rectdivHeight[1]);

//testsetupbean();

//for (int i=0; i<textDIVs; i++) {
  //fontSize[i] = fontSizeAlgmorithm(fontSize[i],i);
  //textdraw(fontSize[i], string[i], rectDIVWidth[i], rectDIVHeight[i]);
}
//void draw() {
}
//
//void mousePressed() {
//}
//
//void keyPressed() {
//}
 
