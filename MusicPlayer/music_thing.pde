//Global Variables
Boolean musicButton=false;
Boolean loopmode =false;
//
int numberOfsongs =1;
Audioplayer[] playlist = new audioplayer[numberofsongs];
int currentsong = numberofsongs - numberofsongs;//zero
//
float musicbuttonX, musicbuttonY, musicbuttonwidth, musicbuttonheight;
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
color nightmode=#FFFF00, daymode=#FFFFFF;
color resetdefaultColour=#FFFFFF;
//
void musicPlayersetup() {
  musicbuttonWidth = shorterSide*1/20;
  musicbuttonX = appWidth - musicButtonWidth;
  musicbuttonY=appHeight*0;
  musicbuttonheight = shorterside*1/20;
  musicMenuX = appwidth*1/4;
  musicmenuY = appheight*1/4;
  musicmenuWidth = appwidth*1/2;
  musicmenuHeight = appheight*1/2;

  minim =new Minim(this);
  //
  String musicpathway ="music/";
  //
  String song = "loop";
  //
  String filiextension_mp3 =".mp3";
  //
  String musicdirectory = "../../../../" + musicpathway;
  String file = musicdirectory+loop+fileExtension_mp3;
} // end setup
//
void musicPlayerdraw()
{
  println("music playing");
  //background();
  fill();
  musicplayerGUL(musicMenuX, musicMenuY, musicmenuWidth, musicmenuHeight);
  if (playlist[currentsong].play()) {
    if (loopmode) {
      next();
    }
  }// end draw
}
//
void musicPlayermousePressed() {
  if ( mouseX>musicbuttonX && mouseX<musicButtonX+musicbuttonwidth && mouseY>musicbuttonY&&mouseY<musicbuttonY+musicbuttonheight) {
    musicButtonSwitch();
  }
  if (musicButton==true) {
  } else {
    //regular program overlapping music menu
  }
}
//end mousePressed()
//
void musicPlayerkeyPressed() {
  if (key == 'Q'|| key =='q') {
    if (musicButton==true) {
      musicbutton=false;
    } else {
      musicButton=true;
    }
  }

  if (key=='W' || key=='w') playlist[currentSong].play(); // simple Play, no double tap /*note: double tap is automatic rewind,nopause

  if (key=='E' || key=='e') {
    if ( playlist[currentSong].isplaying()) {
      playlist[currentSong].pause();
    } else {
      playlist[currentSong].play();
    }
  }
  if (key=='R' || key=='r') {
    if (playlist[currentsong].playing() ) {
      playlist[currentSong].pause();
    } else {
      playlist[currentSong].rewind();
    }
  }
  if (key=='T' || key=='t') playlist[currentsong].loop(1);//loop once
  if (key=='Y' || key=='y') plalist[currentsong].skip(10000);
  if (key=='U' || key=='u') playlist[currentsong].skip(-10000);
  if (key=='I'|| key=='i') previous();
  if (key=='O'|| key=='o') next();

  if (key == 'P'|| key == 'p') {
    if (loopmode == true ) {
      loopmode=false;
    }
  }
}
//end keyPressed
void previous() {
  // stop the current song
  player.stop();
  // go to the previous song
  currentsong--;
  if (currentsong < 0) {
    currentsong =numberofsongs-1;// wrap  around to the last song
  }
  //play the previous song
  player=playlist[currentsong];
  player.play();
}
// end previous
void next () {
  // stop the current song
  player.stop();

  currentsong++;
  if (currentsong >= numberofsong) {
    currentsong =0;
  }
  //play the next song
  player = playlist[currentsong];
  player.play();
}
void musicplayerGUL(float X, float Y, float Width, float Height) {
  rect(X, Y, width, height);
  fill(resetdefaultColour);
}//end musicplayerGUl
//
//end subprogram music player
void musicButtonswitich() {
  if (musicButton==true) {
    musicbutton=false;
  } else {
    musicButton=true;
  }
}
