//Libraries and Dependancies
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Boolean autoPlayON=false;
//
void setup() {
  musicLoadSetup();
} //End setup
//
void draw() {
  //println( millis() );
  if ( autoPlayON==true ) autoPlayMusic();
} //End draw
//
void keyPressed() {
  musicFeaturesKeyPressed();
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
