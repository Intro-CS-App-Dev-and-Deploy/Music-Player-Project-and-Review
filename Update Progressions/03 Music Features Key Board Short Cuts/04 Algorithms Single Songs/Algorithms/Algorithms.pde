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
  soundEffect1.pause();
  soundEffect1.rewind();
  if ( key=='Q' || key=='q' ) {
    soundEffect0.loop(0); // Exit Sound
    delay(2800); //See draw() to understand time in milliseconds
    exit();
  }
  if ( key==CODED || keyCode==ESC ) {
    soundEffect0.loop(0); // Exit Sound
    delay(2800); //See draw() to understand time in milliseconds
    exit();
  }
  // Testing All Songs
  //Hint: notice human numbering vs. computer numbering
  //Note: if(key=='1')song0.loop(0); will change to array & index introduction
  if ( key == '1' ) songs[0].loop(0); //.rewind() is included in .loop()
  /*
  if ( key == '2' ) songs[].loop(0);
  if ( key == '3' ) songs[].loop(0);
  if ( key == '4' ) songs[].loop(0);
  if ( key == '5' ) songs[].loop(0);
  if ( key == '6' ) songs[].loop(0);
  if ( key == '7' ) songs[].loop(0);
  if ( key == '8' ) songs[].loop(0);
  */
  //
  //Students to make these smarter
  //Separated into single songs and multiple songs
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
