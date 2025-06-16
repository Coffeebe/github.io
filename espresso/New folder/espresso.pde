import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import java.io.File;

int appwidth, shorterside;


Minim minim;
int numberOfSongs = 1;
AudioPlayer[] playlist;
int currentSong;

void setup() {
  size(700, 500);
  appwidth = width;
  int appheight = height;
  shorterside = int(comparisonReturnSmaller(float(appwidth), float(appheight)));

  minim = new Minim(this);
  String absolutePath = sketchPath();
  println(absolutePath);
  String dependenciesFolder = "/../la_coffee/";
  String musicDirectory = absolutePath + dependenciesFolder;

  File directory = new File(musicDirectory);
  File[] fileNames = directory.listFiles();

  if (fileNames != null && fileNames.length > 0) {
    playlist = new AudioPlayer[fileNames.length];
    numberOfSongs = fileNames.length;
    currentSong = 0;

    for (int i = currentSong; i < numberOfSongs; i++) {
      String filePath = musicDirectory + fileNames[i].getName();
      playlist[i] = minim.loadFile(filePath);
    }
  } else {
    println("No files found in the directory.");
  }
}

void draw() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text("Playing: " + (currentSong + 1) + " / " + numberOfSongs, width / 2, height / 2);
}
void keyPressed() {
  if (key == 'n' || key == 'N') {
    playNextSong();
  }
}

void playNextSong() {
  if (playlist[currentSong].isPlaying()) {
    playlist[currentSong].close();
  }
  currentSong = (currentSong + 1) % numberOfSongs;
  playlist[currentSong].play();
}

float comparisonReturnSmaller(float a, float b) {
  return a < b ? a : b;
}
