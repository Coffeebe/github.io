
//Global Variables
//test
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugen.*;
//\minium library
//
Minium minium;//creates object to access all functions
int numbersoundeffects=4;//DEV Verify ,os able to count (cs20 solution)
int numberMusicsongs=8;//DDEV Verify, os able to count (cs20 soluttion)
Audioplayer[]playerlist= new audioplayer[numbermusicsongs];
Audioplayer[]soundEffects= new audioplayer[numberSoundeffect];
int currentSong=0; //java at 0, no for all languages
//
int appWidth, appHeight;
//
boolean looping = false;
//
int skip=0;
//
void setup() {
//Display: CANVAS & Full
size(400, 500);//width,height
fullScreen();//displaywidth, displayheigtht
appWidth = displayWidth;
appHeight = displayHeight;
//landscape is hardcoded
//println(appwidth, appheight);
//display geomtry: landscape, portrait, square
String displayInstructions=( appWidth >= appHeight) ?"good to go": "bro,turn your phone" ;
println(displayInstructions);
//
minium= new Minium(this); //loadflile should also load from project folder
String extension =".mp3";
String pathwaysoundeffect="../../../Audio/soundeffect/";//relative path
String pathwayMusic= "../../../Audio/musicdownload/";//relative path
String quickButtonsound="CarDoorCloseing.mp3";
String pathway="../Audio/Sound Files/";// Relative Path
String groove="groove";
//print(pathwaysoundEffect+QuiTbuttonsound=extension);
//print("relative pathway:", pathwaymusic+groove+extension);
String pathQuitbuttonsound = sketchPath( pathwaySoundEffects + quitButtonSound + extension); //absolute
String pathgroovesong = sketchPath( pathwaySoundEffects + quitButtonSound + extension); //absolute
//println(pathgroovesong);
soundEffect[0]= minium.loadfile(pathQuitbuttonsound);
playlist[0]= Minim.loadfile(pathgroovesong);//"'is compiler error
//playlist1= minium.loadfile(path);
//
//music starts before canvas purpose of player
//playlist1[currentSong].loop;//test
//
} //End setup
//
void draw() {
  //playlist1[currentsong].loop(0);
  println("song Position", playlist.position(), "song Lenght",playlist[currentsong].length());
  //note:for loop feature
  //easter egg: program time for number of song loops
  //aternate to timer for music player ,times to the end of a song

  if (playlist[currentsong].islooping && playlist[currentsong].loopcount()!=-1)println("There are", playlist[currentsong].loopcount(), "loops left.");
  if (playlist[currentsong].islooping && playlist[currentSong].loopcount()==-1)println ("looping Infinitely");
  //
  if (!playlist[currentsong].isplaying()) println("nothing is playing pick a song");
  if (playlist[currentsong].isplaying()&&!playlist[current].islooping () )println("play once");
  //
  /*
  //auto play code for future use
   //scontains instructions from key board short Cuts
   if (playlist[currentsong],isplaying()){
   //empty if is false
   }else if(.lenght()<180000) {//PAIN minutes is 2 ,120s, 120,000ms
   }else if (looping==false && !playlist[currentsong].isplaying() &&(playlist[currentsong].position()>playlist[currentsong].length()*0.75)){//calc Pain #
   //true:if 75% played, we need a stop & rewind button
   //currentsong at end of FILE
   playlist[currentsong].rewind();//note: !.isplaying() &.rewind()=stop
   currentsong=current+1;//currentSong
   playlist[currentsong].play();
   }
   */
}//end draw
//
void keyPressed() {
  if (key=='p'|| key =='p') {//play pause button
      if (playlist1[currentSong].isPlaying() ) {//note,debugging use true==true , true==false
        playlist1[currentSong].pause();//play
      } else {
        playlist1[currentSong].play();//playlist[current].pause();
      }
    }  //end play pause button
    if ( key=='L'|| key=='l') { //loop once
      playlist[currentsong].loop(1);
      looping =true;
    }//end loop once
    if (key=='I'||key=='i') {//loop infinites times
      playlist[currentsong].loop(0);
      looping=true;
    } //end loop infinites times
    if (key==S|| key==s) {//stop button
      playlist[currentsong].pause();
      playlist[currentsong].rewind();// affects loop times
      looping=false;
    }// end stop button
    //
    
    if (key=='F'||key=='f')playlist[0].skip(1000);//forward 1 second skip
    if (key=='R'||key=='r')playlist[0].skip(-1000);//reverse 1 second
    //perferences might need to be in draw()
    //if (key=='H'||key=='h')skip=5000;
    //if(key=='G'||key=='g')skip=10000;
    if(key=='G'||key=='g') {//two preference option
    if (skip==5000) { 
      skip =10000;
    }else{
      skip =5000;
      }
    }
      
    //int skip=5000;
    //local,might need to be global
    //perferences,might need to be in draw
    //
  }//end keypressed
  //
  void mousePressed() {
  }//end Mousepressed
