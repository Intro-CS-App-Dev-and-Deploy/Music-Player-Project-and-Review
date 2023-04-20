//Global Variables
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
PFont font;
color purpleInk=#2C08FF, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
String string1 = "I need off the learning bus! Spring Break is not over.";
String string2 = "Bottom of the Page.";
String string3 = "Middle.";
//
void allText() { //VOIDs that go into MAIN PROGRAM
  textDraw1();
  textDraw2();
  textDraw3();
}//End All Text
//
void textSetup() { //Executed Once
  //Population, from display
  //Must have CASE STUDY
  textRectX1 = textRectX2 = textRectX3 = width*1/5;
  textRectWidth1 = textRectWidth2= textRectWidth3= width*3/5;
  textRectHeight1 = textRectHeight2 = textRectHeight3 = height*1/10;
  textRectY1 = height*1/10;
  textRectY2 = height*8/10;
  textRectY3 = height*5/10;
  //
  //For visualizing rect(), variables are important
  //rect( textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  //rect( textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  //rect( textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  /*
  println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Note: FOR Loop to printing specfic parts of fontList
   */
  // Choose your font now
  font = createFont ("Harrington", 55); //Verify font exists
  //Variable names could be font names making code reading like a book
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
}//End Text Setup()
//
void textformatting() { //EXECUTED Code applied to all textDraw's
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 18 ); //Change the number until it fits, largest font size
}//End Pre Text Draw
//
void textDraw1() {
  textformatting(); //Like COPY & PASTE, will not change
  //
  //Overwriting text formatting
  //NA
  //
  //Printing Text on the CANVAS
  text( string1, textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  fill(resetWhiteInk);
  //
}//End Text Draw 1
//
void textDraw2() {
  textformatting(); //Like COPY & PASTE, will not change
  //Change textAlign()
  textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Change textSize()
  textSize( 30 ); //Change the number until it fits, largest font size
  text( string2, textRectX2, textRectY2, textRectWidth2, textRectHeight2 );
  fill(resetWhiteInk);
}//End Text Draw 2
//
void textDraw3() {
  textformatting(); //Like COPY & PASTE, will not change
  //Change textSize()
  textSize( 42 ); //Change the number until it fits, largest font size
  text( string3, textRectX3, textRectY3, textRectWidth3, textRectHeight3 );
  fill(resetWhiteInk);
}//End Text Draw 3
//
//End Text Subprogram
