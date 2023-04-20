//
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
  //Display
  size(700, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //
  setupMusic();
  population();
  //
}//End setup
//
void draw() {
  drawMusic();
  //
  /* Note: mouse pressing conditionals remain the same
  - Add Hoverover in draw()
  - Add ternary fill and nightmode in mousePressing & draw() connected to drawMusic in Music Subprogram
  */
}//End draw
//
void keyPressed() {
  keyPressedMusic();
}//End keyPressed
//
void mousePressed() {
  mousePressedMusic();
}//End mousePressed
//
//End MAIN Program (Driver)
