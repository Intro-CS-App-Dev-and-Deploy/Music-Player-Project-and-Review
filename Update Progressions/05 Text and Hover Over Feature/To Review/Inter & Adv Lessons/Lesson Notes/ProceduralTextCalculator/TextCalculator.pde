//Global Variables for Text
PFont titleFont;
//
int titleX, titleY, titleWidth, titleHeight; //Layout rect()
String title = "Wahoo!";
//
color purpleInk = #2C08FF; //Not nice for Night Mode, Blue Content
color whiteInk = #FFFFFF;
//
void textSetup()
{
  println("Start of Console");
  //
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  titleFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  //Populating Variables for Layout
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
  //Layout
  textLayout();
}//End textSetup()
//
void textLayout()
{
  //Laying out text space and tyopgraphical Features
  rect(titleX, titleY, titleWidth, titleHeight);
}//End textLayout()
//
void preDrawText(float height, color ink, int alignHorizontal, int alignVertical, PFont font)
{
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}//End preDrawText
//
void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight)
{
  preDrawText(height, ink, alignHorizontal, alignVertical, font);
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}//End textDraw
//
void textReset()
{
  fill(whiteInk); //reset
}//End textReset()
//
float textCalculator(float size, String string, float rectWidth )
{
  textSize(size); //For textWidth sizing
  while ( textWidth(string) > rectWidth)
  {
    size = size * 0.99; //size-- will do pixels
    textSize(size);
  }//End WHILE;
  size =  size * 0.55; //different fonts and string sizes need extra shrinking
  return size; //Purpose of Calculator
}//End textCalculator
