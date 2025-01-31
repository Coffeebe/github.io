
//Global Variableb
//test
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugen.*;
//minium library
Minim minim;
int numbersoundeffects=4;//DEV Verify ,os able to count (cs20 solution)
int numberMusicsongs=8;//DDEV Verify, os able to count (cs20 soluttion)
Audioplayer[]playerlist= new audioplayer[numbermusicsongs];
Audioplayer[]soundEffects= new audioplayer[numberSoundeffect];
AudioMetaData[]playlistmetadata=new AudioMetaData[NumberMusicSongs];
int currentSong = numberMusicSongs - numberMusicSongs; //java at 0, no for all languages
int skip = 5000;
//
int AppHeight,AppWeight
//        
;
//
int skip=0;
//
void setup() {
//Display: CANVAS & Full
size(400, 500);//width,height
//fullScreen();//displaywidth, displayheigtht
appWidth = displayWidth;
appHeight = displayHeight;
//landscape is hardcoded
//println(appwidth, appheight);
//display geomtry: landscape, portrait, square
String displayInstructions=( appWidth >= appHeight) ?"good to go": "bro,turn your phone" ;
//println(displayInstructions);
//
minium= new Minium(this); //loadflile should also load from project folder
String extension =".mp3";
String pathwaysoundeffect="../../../../../Audio/soundeffect/";//relative path
//Note:'../ preivous Error 
String pathwayMusic= "../../../../../Audio/musicdownload/";//relative path
String quickButtonsound="CarDoorCloseing.mp3";
String pathway="../Audio/Sound Files/";// Relative Path
String groove="groove";
//println(pathwaysoundEffect+QuiTbuttonsound=extension);
//println ("relative pathway:", pathwaymusic+groove+extension);
String pathQuitbuttonsound = sketchPath( pathwaySoundEffects + quitButtonSound + extension); //absolute
String pathgroovesong = sketchPath( pathwayMusic + quitButtonSound + extension); //absolute
//println(pathgroovesong);
String beatyourcompetition = "Beat_Your_Competition";
String cycles="Cycles";
String eurek= "Eureka";
String ghost_walk="ghost_walk";
String newsroom = "Newsroom";
String startyourEngines = "Start_Your_Engines";
String thSimpest="the_simplest";

filepathNameMusic[currentsong]= sketchpath(pathwaysoundEffects+extension);//absolute path
//printIn( curretsong, filepathnamemusic[current]);
//equivalent functions: ++ | +=1
filepathNameMusic[currentSong+=1]=Pathwaymusic+beatyourComptition + extension;
//printIn(currentsong,fliepathNameMusic[currentsong]);
filepathNameMusic[currentsong+=1]= pathwaymusic+cycles+extension;
filepathNameMusic[currentsong+=1]= pathwaymusic+Eureka+extension;
filepathNameMusic[currentsong+=1]= pathwaymusic+ghost_walk+extension;
filepathNameMusic[currentsong+=1]= pathwaymusic+Newsroom+extension;
filepathNameMusic[currentsong+=1]= pathwaymusic+start_your_Engines+extension;
filepathNAmeMusic[currentsong+=1]= pathwaymusic+the_simplest+extension;
soundEffect[0]= minium.loadfile(pathQuitbuttonsound);
playlist[0]= Minim.loadfile(pathgroovesong);//"'is compiler error
playlistMetadata[0]= playlist[0].getMetaData(); // reads song meta 1,like song 1 mimicing array notation
//metadata[0]=minim.loadfile(pathQuitbuttonsound);
//playlist1= minium.loadfile(path);
//
soundEffects = minim.loadfile(filepathNameSoundeffect[0]);
//
//println("current song, random number:, int (random(0,8));
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
  
  //auto play code for future use
   //scontains instructions from key board short Cuts

   //empty if is false 
   if(playlist.isPlaying()){
     if(!playlist.islooping() && looping==true )looping=false; // protect .loop() from .rewind(). () as stop loop
   } else if (looping == false && !playlist.isplaying() && playlist.lenght()<180000) {//PAIN minutes is 2 ,120s, 120,000ms
   //true: if song is less than # minutes,stop,I want to hear it from the beginning
   //.pause() in keypressed() is actually stop
   } else if (looping==false && !playlist[currentsong].isplaying() &&(playlist[currentsong].position()>playlist[currentsong].length()*0.75)){//calc Pain #
   //true:if 75% played, we need a stop & rewind button
   //.pause() in keypressed(){}is actually stop
   //currentsong at end of FILE
   
   playlist[currentsong].rewind();//note: !.isplaying() &.rewind()=stop
   currentsong=current+1;//currentSong
   playlist[currentsong].play();
   } else {
   
  print("current song # is:",currentsong);
  playlist.pause();//note: computer play muitple song
     playlist.rewind();// mulitple file will play at the same time
     //try catch
     if (randomplaylist==true) {
       currentSong = int (random(numbermusicsongs-numbermusiccsongs, numbermusicSongs) );
     } else{
     if  (numbermusicsongs>=numberMusicSongs-1) {//note: possilble error when !=
     currentSong = 0;
     }else{
       currentsong++;
     }
     println("current Song changed to:",currentsong);
     playlist=minim.loadfile (filePathnameMusic[currentsong]);
     playlist.play();
     /*
     if (!playlist.isplaying()){//error:else
     printIn("else of IF-elseif-else (.isplaying)");
     playlist.pause();//note: computer plays harddrive file,
     playlist.rewind();// muliplel files will play at the 
     iioou 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ppp
  }
  //Mute fix
  /*
  if (playliat[currentsong].isMuted()) print("Muted"); //End Mute fix
  previous If-Else
  If(playlist[currrentsong].isplaying()){
    //empty If,true
  }else {
    playlist[currentsong].rewind();//caution:!.playing()&.rewind= sTop
  } 
  */
  //
  //printing text to console | canvas
  fill(black);//note: background for rect()
  rect(width*1/4,height*0,width*1/2,height*1/10); //text div
  fill(white);//Ink
  textAlign(CENTER,CENTER); //align X&Y see processing.org/ reference
  //Values:[left|Center|right]&[top|center|bottom|baseline]
  int size = 43; //change the number until it fits,largest font size
  textFont(titleFont,30);//change the number until it fits, largest font size
  printArray(playlistMetaData);//hard Drive Address to where the meta data var is
  printArray(playlistMetaData[0]);//Hard drive address to specific var
  printIn("title is;", playlistMetaData[0].title() );///hard Drive address to where the meta Data is
  text(songMetadata1.title(), Width*1/4,height*0,width*1/2,height*1/10);
  fill(255);//reset to for rest of the program
   //
   if (playlist[currentSong].ismuted())println("muted");
}//end draw
//
void keyPressed(){
  if (key=='A'||key=='a'){ //random pick another song in the song in the playlist
  currentSong = int (random(numberMusicsong-numberMusicSongs,numberMusicSongs)
    println("current song, random number:",currentSong);
    playlist.pause(); //note: computer plays harddrive file,
    playlist.rewind(); // mulitple file will play at the same time
    playlist = minim.loadfile(filepathnameMusic[currentsong]);
    playlist.play();
  }
  if(key=='Z'||key=='z'){//randomly pick another song allthe time, even in autoplay
  if(randomplaylist ==true){
    randomplaylist = false;
  } else{
    randomplaylist = true;
  }
  println("randomizing the play list is:",randomplaylist);
  }
  
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
    if (key=='S'|| key=='s') {//stop button
      playlist[currentsong].pause();
      playlist[currentsong].rewind();// affects loop times
      looping=false;
    
    }// end stop button
    //
    //-ff: first 10 seconds means NEXT
    //-ff: last 25% means NEXT
     //-ff means between above, it is a ff Button
    //-note:between the above,NEXT Exists
    if (key=='F'||key=='f')playlist[0].skip(1000);//forward 1 second skip
    
    if(playposition<10000);
    //if(playlist.position()>=10000 &&(playlist.position()<=playlist.lenght()0.75);
    //if(playlist.position()>playlist.lenght()0.75);{
     
    println("current Song,random number:",currentSong);
     playlist.pause();//note: computer play muitple song
     playlist.rewind();
     //try catch
   123  }else{
     if int( random(numbermusicsongs>=numberMusicSongs-1) {//note: possilble error when !=
     currentSong = 0;
     }else{
       currentsong++;
     }
    }
     println("current Song changed to:",currentsong);
     playlist=minim.loadfile (filePathnameMusic[currentsong]);
     playlist.play();
     /*
     
     println("New value of skip,skip,'position:",playlist.postion(),"Crossedlast 75%");playlist.position()
    }
    if (key=='R'||key=='r')playlist[0].skip(-1000);
    //reverse 1 second
    println(
    //perferences might need to be in draw()
    //if (key=='H'||key=='h')skip=5000;
    //if(key=='G'||key=='g')skip=10000; 
    */
    if(key=='G'||key=='g') {//two preference option
    println ("old Value of SKIP",skip, "position:", playlist.position(), 'Crossed last 75%);
    if (skip==5000) { 
      skip=int (playlist[0].lenght()*0.25);//tuncated to nearest millisecond
    }else{     
      skip =5000;
      }
    }
    if (key=='M'|| key=='m'){// Mute Button
      //note: mute individual songs if multiple songs are playing
      //caution: potenial fatal error
      if ( playlist[currentSong].isMuted()){
        playlist[currentsong].unmute();
      } else {
        playlist[currentSong].mute()
      }
     if (key=='A'||key=='a'){currentSong= int random(numberMusicsong-numberMusicsong,numberMusicsong));
     println("current Song,random number:",currentSong);
     playlist.pause();//note: computer play muitple song
     playlist.rewind();
     playlist= minim.loadfile( filePathNameMusic{currentsong]);
     playlist.play();
     //
     //must add music and rest of key pressed for play & Loop
    //int skip=5000;
    //local,might need to be global
    //perferences,might need to be in draw
    //
    }//end keypressed
  //
  void mousePressed() {
  }//end Mousepressed
