// Text is always put in one rectangle
//
//Global Variables
float playX1, playY1, playWidth, playHeight;
float playX2, playY2, playX3, playY3;
//
void drawOneRectangle()
{
  float pauseScaleWidth = 1.0/1.0; //used to change x-size
  float pauseScaleHeight = 1.0/1.0; //used to change y-axis
  float startingX = width*1/2 * pauseScaleWidth;
  float startingY = height*1/2 * pauseScaleHeight;
  float buttonWidth = width*1/9;
  float buttonHeight = buttonWidth;
  //
  //Population
  playX1 = startingX - buttonWidth*1/2;
  playY1 = startingY - buttonHeight*1/2;
  playWidth = buttonWidth;
  playHeight = buttonHeight;
  playX3 = playX1;
  playY3 = playY1 + playHeight;
  playX2 = playX3 + playWidth;
  playY2 = playY1 + (playY3 - playY1)*1/2;
  //
  rect( playX1, playY1, playWidth, playHeight );
  //triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
}// End Draw One Rectangle
//
//End One Rectangle SubProgram
