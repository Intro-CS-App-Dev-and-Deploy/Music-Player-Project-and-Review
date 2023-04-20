// Sandbox for Text Calculator

//Global Variables

void setup() 
{
  size(500, 600); //fullScreen(); //displayWidth & displayHeight
  //
  textSetup();
  textDraw();
  //
  //flatText();
}//End setup()

void draw() {
}//End draw()

void mousePressed() {
}// mousepressed()

void keyPressed() {
}//End keyPressed()

//Use this to cut out appropriate lines
void flatText() 
{
  println("Start of Console");
  //Fonts from OS
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  PFont titleFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //Layout with a rect()
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 50); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(whiteInk); //reset
}//End flatText()
