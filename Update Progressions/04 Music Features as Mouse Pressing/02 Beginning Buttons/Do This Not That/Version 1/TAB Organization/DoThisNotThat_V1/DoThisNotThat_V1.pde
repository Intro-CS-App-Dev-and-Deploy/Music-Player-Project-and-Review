//Global Variables
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
//
void setup()
{
  //Display Geometry
  size( 600, 400 ); //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  population();
  textSetUp();
}//End setup
//
void draw()
{
  GUI_draw();
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  buttonsMousePressed();
  //
}//End mousePressed
//
//End MAIN
