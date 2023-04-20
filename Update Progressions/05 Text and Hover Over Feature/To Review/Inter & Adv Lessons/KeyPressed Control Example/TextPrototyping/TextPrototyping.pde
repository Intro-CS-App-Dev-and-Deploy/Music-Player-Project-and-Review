/* Prototyping Text
 - Copy a rectangle from the 2D Music Button Shapes
 - Add a Rectangle to put text in
 - Note: could also be a "HoverOver" Feature
 */
//
//Global Variables
Boolean drawText=false;
//
void setup() {
  size(700, 500);
  //flatText(); //Does this work?
  drawOneRectangle();
  textSetup(); //must be void setup
}// End setup
//
void draw() {
  //Example Text behind a key press
  background(whiteInk);
  //
  //Below shows population of local variables
  textDraw( height, purpleInk, CENTER, CENTER, Harrington, string, playX1, playY1, playWidth, playHeight ); //can be anywhere
  if ( drawText == true ) textDraw( height, purpleInk, CENTER, CENTER, Harrington, stringAlternate, playX1, playY1+height*1/4, playWidth, playHeight ); //can be anywhere
  println( drawText );
}// End draw
//
void keyPressed() {
  if ( key=='t' | key=='T' ) {
    if ( drawText == false ) {
      drawText=true;
    } else {
      drawText=false;
    }
  }
}// End keyPressed
//
void mousePressed() {
}//End mousePressed
//
void flatText() { //Reviewing Introductory Text Code
  //Variables Needed, usually Global Variables
  float textRectX, textRectY, textRectWidth, textRectHeight;
  PFont font;
  color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "I need off the learning bus! Spring Break is not over.";
  //
  //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
  rect( textRectX, textRectY, textRectWidth, textRectHeight );
  /*
  println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  // Choose your font now
  font = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 50 ); //overwrites the previous text size
  //
  //Printing Text on the CANVAS
  text( string, textRectX, textRectY, textRectWidth, textRectHeight );
  //
  fill(resetWhiteInk);
  //
}//End Flat Text Review
//
//End Main Program
