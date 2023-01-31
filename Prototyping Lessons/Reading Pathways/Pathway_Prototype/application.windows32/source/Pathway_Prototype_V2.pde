import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath();
String dir = "C:/Users/mmercer/Documents/GitHub/Music-Player-Project-and-Review/Prototyping Lessons/Reading Pathways/Pathway_Prototype";
//
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
String songTitle;
//
void setup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage

  File directory = new File(Path); //dir
  File[] FileList = directory.listFiles(); //folder
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        song1 = minim.loadFile(file.getName());
      }
    }
  }
  printArray(FileList);
  //
  //An error when the program is not exported, running from Processing Folder in C-Drive
  if (song1 == null) {
    directory = new File(dir); //dir, no initiation since done before
    FileList = directory.listFiles(); //folder, no initiation since done before
    for (File file : FileList) {
      if (file.isFile()) {
        if (file.toString().endsWith(".mp3")) {
          song1 = minim.loadFile(file.getName());
          //println(file.getName().toLowerCase()); //Lists Files In Music Folder ending in ".mp3"
        }
      }
    }
  }
  song1.play();
}
//
void draw() {}
//
void keyPressed() {}
//
void mousePressed() {}
//
//End Main Program
