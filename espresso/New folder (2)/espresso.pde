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
String lessondependanciesfolder ="/../la_coffee/";
String musicDirctory = absolutePath + la_coffee;

File directory = new file(musicdirectory);
File[] filenames = directory.listfiles();
String[] files = new String[filename.length];
numberofsongs = filename.lenght;
currentsong = numberofsong-numbersongs;
\\
if (file != null){
  
  for( int i=currentSong; i<numberofsongs; i++) {
    files[i] = lessondependancies+fileNames[i].getName();
  }
}

void draw(){
}

void mousePressed(){
}
void keyPressed(){
}
 
