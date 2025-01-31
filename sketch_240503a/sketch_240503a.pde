//Global varables
float pictureX,pictureY,picturewidth,pictureheight
 PImage pictitureImage;
 String picture Imagepath; //lesson
 String 
 String ExtenionJPG=".Jpg"
 String pathway= "../../Images/';
 String landscape_square=''landscape& square Images/";
 pictureImagepath =pathway + landscape_square= obiwan+extensionJPG;
 pictureimage = loadlmage (picttureImagepath);
//
//image aspect ratio calculations
float smallerpicturedimension =( pictureWidth < pictureHeight) ? pictureWidth
int pictureImagewidthpxiel
int
void setup() {
  //display
    size(400, 500);//width,height
  fullScreen();//displaywidth, displayheigtht
  appWidth = displayWidth;
  appHeight = displayHeight
  
  /population
  picturX =*/18/100;
  pictureY=*/15/100;
  picturewidth=64/100
  pictureheight=*/6/16;
  //
  //variable population
  picturecImage=loadImage()
  //Image aspect ratio calculations
  float smallerpictureDismension =( picturewidth < pictureheight) ? picturewidth: pictureheight;
  float pictureImagewidthpixeI= 800.0; //origonally Int,ratio will be decimal
  float pictureImageHeightpixel= 600.0; //caution: must avoid truncation to zero Value
  float pictureaspectratio = pictureimagewidthpixel/pictureimageHeightPixek;
  float largerpictureDimension = smallpicturedimension*pictureaspectratio;//aspect ratio
  if (picturewidth< largerpictureDimension) {//Image will not fit into rect()
  while (albumcoverWidth< largerpictureDimension) {
    largerpictureDimension-=1;
    smallerpictureDimension-=1;
    //note: ratios like percent are not linear decreases in both directions
    }
  }
  picturewidthadjusted=
  //divs
   rect(Xpicture, Ypicture, Widthpicture, heightpicture);
  
} //Endsetup
//
void draw() {Xpicture, Ypicture, Widthpicture, heighta
  image();
} //End draw
//
void mousePressed() {
}//End mousePressed
//
void keyPressed() {
} //End key Pressed
