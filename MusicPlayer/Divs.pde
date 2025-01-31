float backgroundX,backgroundY,backgroundWidth,backgroundHeight;
float Xpicture,Ypicture,Widthpicture,heightpicture;
float Xquit,Yquit,Widthquit,Heightquit;
float Xplay,Yplay,Widthplay,Heightplay;
float Xpreious,Ypreious,Widthpreious,Heightpreious;
float Xskip,Yskip,Widthskip,Heightskip;
float Xloop,Yloop,Widthloop,Heightloop;
//
void Divs(){//access all of subprogram in order
popluation();
drawREcts();
}//End DiVs
//
void population(){
  backgroundX= appWidth*0;
   backgroundY= appHeight*0;
   backgroundwidth= appWidth;
   backgroundheight= appHeight;
   Xpicture=appWidth= appWidth*35/100;
   Ypicture= appHeight*appHeight*1/6;
   Widthpicture= appWidth*1/5;
   heightpicture= appHeight*1/4;
   Xquit= appWidth*90/100;
   Yquit= appHeight*91/100;
   Widthquit= appWidth*9/100;
   Heightquit= appHeight*5/100;
   Xplay= appWidth*1/2;
   Yplay= appHeight*100/100;
   Widthplay= appWidth*1/20;
   Heightplay= appHeight*1/20;
   Xpreious= appWidth*45/100;
   Ypreious= appHeight*1/2;
   Widthpreious= appWidth*1/20;
   Heightpreious= appHeight*1/20;
   Xskip= appWidth*0;
   Yskip= appHeight*0;
   Widthskip= appWidth*0;
   Heightskip= appHeight*0;
   Xloop= appWidth*0;
   Yloop= appHeight*0;
   Widthloop= appWidth*0;
   Heightloop=appWidth*0;
}//end population
//
void drawRects() { //layout Divs
//Formula: rect(X,Y,Width,Height);
//
//rect(backgroundX, backgroundY,backgroundWidth,backgroundHeight);
//
int centerX= appWidth*1/2;
int centerY= appHeight*1/2;
//rect(centerX*1/2,centerY*1/2,appWidth*1/2,appHeight*1/2);
//
rect(pictureX,pictureY,pictureWidth,pictureHeight);
rect(Xplay,Yplay,Widthplay,Heightplay);
rect(Xquit,Yquit,Widthquit,Heightquit);
//
} //End Draw Ractangles
//End Divs SubProgram
