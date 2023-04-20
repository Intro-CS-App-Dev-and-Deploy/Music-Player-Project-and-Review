//Global Variables
float textRectX, textRectY, textRectWidth, textRectHeight;
PFont font, harrington;
color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
String string = "I need off the learning bus! Spring Break is not over.";
//
void setup() {
  size(700, 500); //fullScreen(); //displayWidth & displayHeight
  //
  //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
  //For visualizing rect(), variables are important
  rect( textRectX, textRectY, textRectWidth, textRectHeight );
  /*
  println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Note: printArray() might use all CONSOLE Memory
   //Alternate Printing of Array, printing what the CONSOLE misses
   for ( int i=0; i<78; i++ ) {
   println(i+".", fontList[i] );
   }//End fontList FOR Loop Printing
   */
  // Choose your font now
  font = createFont ("Harrington", 55); //Verify font exists
  harrington = createFont ("Harrington", 55); //idea for creating mutliple fonts
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 18 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string, textRectX, textRectY, textRectWidth, textRectHeight );
  //
  fill(resetWhiteInk);
  //
}//End Set Up
//
void draw() {
}//End Draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
