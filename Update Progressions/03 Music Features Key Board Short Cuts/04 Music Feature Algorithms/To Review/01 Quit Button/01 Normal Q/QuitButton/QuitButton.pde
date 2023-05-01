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
  soundEffect1.loop(0); // Auditory Keyboard Feedback
  delay(4000); //See draw() to understand time in milliseconds
  soundEffect1.rewind();
  soundEffect1.pause();
  if ( key=='Q' || key=='q' ) {
    soundEffect0.loop(0); // Exit Sound
    delay(2800); //See draw() to understand time in milliseconds
    exit();
  }
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
