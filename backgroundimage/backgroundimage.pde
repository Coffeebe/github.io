//test
//Global Variables
int appWidth,appHeight,brightness=255;
float backgroundImageX, backgroundImageY, backgroundImageWidth, BackGroundHeight;
PImage backgroundImage;
boolean Lightmode= false,darkmode=false,Lightmode= false,darkmode=false;
//boolean darkmode=false; //see keypressed for NOTE
 //
 void setup () {
  //Display
  fullscreen();
  appWidth =displayWidth;
  appHeight=displayHeight;
  //poplation
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImagewidth = appWidth*-1;
  backgroundImageheight = appheight*-1;
  //
  String Image= Summer knights Market Background Image;
  String backgroundImagename= Image;
  String extension =".png";
  String pathway="../../../Images/";
  String landscape_square="landscape & square Images/";
  String portrait = "Portrait/"
  //string path =pathway+portrait+backgroundImagename = name;
  String path = pathway+portrait+backgroundImagename+ extension;
  backgroundImage=loadImage(path);
  //div
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, BackGroundHeight);
  println(lightMode);
} //End setup
//
void draw() {
  background(255);  // day mode,light mode
  //NOTE:lightness ON = max saturation
  if (Lightmode= false. darkmode=false) {
    Brightness =255;
  } else{
    Brightness =128//user preference; lowest brightness
    path = (pathway + portrait + backgroundImageWidth, backgroundImageHeight
    backgroundImage= loadImage(path);
  } 
  tint (255, brightness);//255 is max saturation, max colour
} //End mousepressed
void keyPressed() {//key board short cuts for mouse pressing protoyping
  if (ket =='w') {
    key =='w'
  }
  {//day made, white light containing blue colour
    if (lightmode == false){
      lightmode=true;
    }
else {
  lightmode = false;//Dark mode ON,

//end night mode
//End keyPressed
//
//end Main program
