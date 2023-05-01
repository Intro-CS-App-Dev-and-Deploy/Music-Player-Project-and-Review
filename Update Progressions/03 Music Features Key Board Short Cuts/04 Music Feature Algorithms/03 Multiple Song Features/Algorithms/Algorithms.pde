//Libraries and Dependancies
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
  musicLoadSetup();
} //End setup
//
void draw() {
  //println( millis() );
} //End draw
//
void keyPressed() {
  soundEffects[1].loop(0); // Auditory Keyboard Feedback
  delay(4000); //See draw() to understand time in milliseconds
  soundEffects[1].pause();
  soundEffects[1].rewind();
  //
  musicFeaturesKeyPressed();
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
  //
  //Play any song to Start
  //if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  //
  //Functions that go between songs
  //if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  //Note: for this Auto Play to Work, song must be playing
  //if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  //if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  //if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  //if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  //if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
