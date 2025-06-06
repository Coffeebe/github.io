import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import java.io.file;

int appwidth, shorterside;


Minim minim;
int numberofSongs = 1;
audioplayer[] playlist;
int currentsong;

void setup() {
  
size(700, 500);
appwidth = width;
int appheight = height;
shorterside = int(comparisonreturnsmaller( float(appwidth), float(appHeight)));

minim = new Minim(this);
String aboslutePath = sketchPath();
println(absolutePath);
String dependanciesfolder ="/../la_coffee/";
String musicDirctory = absolutePath + dependciesfolder;

File directory = new file(musicdirectory);
File[] filenames = directory.listfiles();
String[] files = new String[filename.length];
//numberofsongs = filename.lenght;
//currentsong = numberofsong-numbersongs;
\\
if (file != null){
  
  for( int i=currentSong; i<numberofsongs; i++) {
    String filespath = lessondependancies+fileNames[i].getName();
    playlist[i] = minim.loadfile(filepath);
  }
} else {
  println(" no files found in the directoty.");
}

void draw(){
  background(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("playing: " + (currentSong + 1) + " / " + numberofsongs, width / 2, height/2);
}
void keyPressed(){
  if  ( Key == 'n' || key == 'N') {
    playNextSong();
  }
}

void playNextSong() {
  if (playlist[currentSong].isplaying()){
    Playlist[currentSong].close();
  }
  currentSong = (currentSong + 1)% numberofsongs;
  playlist[currentSong].close();
}
 float comparisonreturnSamller(float a,float b) {
   return a < b ? a:b;
 }
  
 
