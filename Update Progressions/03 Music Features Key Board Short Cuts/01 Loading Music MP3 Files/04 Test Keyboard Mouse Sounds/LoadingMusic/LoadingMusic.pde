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
} //End draw
//
void keyPressed() {
  soundEffect0.loop(0); // Exit Sound
  //soundEffect1.loop(0); // Auditory Keyboard Feedback
} //End keyPressed
//
void mousePressed() {
  //song0.loop(0); // Song
} //End mousePressed
//
//End MAIN Program
