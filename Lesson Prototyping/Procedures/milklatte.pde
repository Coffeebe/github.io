// static to procedural lesson
//weird global thingy
int shorterside;
float[] titledivX = new float[textDIVs];
float[] titledivY = new float[textDIVs];
float[] rectdivWidth = new float[textDIVs];
float[] rectdivHeight = new float[textDIVs];
textFont(titlefont, fontSize);
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
  rect(titledivX, titledivY, rectdivWidth[0], rectdivHeight[0]);
  rect(footerdivX, footerdivY, rectdivWidth[1], rectdivHeight[1]);
 for(int i=0; i<textDIVs;i++) {
   rect(titledivX[i], titledivY[i], rectdivWidth[i], rectdivHeight[i]);
  //textFont(titlefont, fontSize);

  //ext(titleX, titleY, rectdivWidth[0], rectdivHeight[0]);
  //text(footerX, footerY, rectdivWidth[1], rectdivHeight[1]);

//testsetupbean();

for (int i=0; i<textDIVs; i++) {
  fontSize[i] = fontSizeAlgmorithm(fontSize[i],i);
  textdraw(fontSize[i], string[i], rectDIVWidth[i], rectDIVHeight[i]);
}
void draw() {
}
//
void mousePressed() {
}
//
void keyPressed() {
}
  //float smallestdivreactheight = allrectheights;
  //float harringtonaspectratio =1;
  //fontSize = fontSize * harringtonaspectratio;
  //hile(footerWidth < textWidth( footer )) fontSize = fontSize*0.99;

  //textFont(titlefont, fontSize);

  //text(title, titleX, titleY, rectdivWidth[0], rectdivHeight[0]);
  //text(footer, footerX, footerY, rectdivWidth[1], rectdivHeight[1]);


  //println( "Text Width:", textWidth(title), "v rectWidth:", titleWidth );
 // println( "Text Height:", fontSize, "v. rectHeight:", titleHeight );
 // println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/titleHeight );

//


//Display

//println("espresso");
String[] fontlist = PFont.list();
//rintArray(fontlist);

//PFont titlefont = createdfont("Arial", shorterSide);
//need font
//float titleX, titleY, titleWidth, titleHeight;
//float footerX, footerY, footerWidth, footerHeight;

//float fontSize = 53 ;
//println("font size:", fontSize);
//for (int i=0; i<rectdivHeight.length(); i++) {
 // if ( rectdivWidth>textWidth(string[i])) {
  //  while (footerWidth < textWidth(string[1]))
 //     fontSize = fontSize*0.99;
 // }
//}



//float smallestdivreactheight = allrectheights;
//hile(footerWidth < textWidth( footer )) fontSize = fontSize*0.99;
