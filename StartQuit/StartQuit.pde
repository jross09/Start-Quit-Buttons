//Global Variables
int appWidth, appHeight, fontSize;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, green=#6DC66C , blue=#1C35B9, pink=#FC1CB2 ;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "Quit!";
PFont titleFont;
//
void setup()
{
  size(800, 600); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  population();
  //  
  String[] fontList = PFont.list(); //To list all fonts available
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Ravie", 48); //Verified the font exists in Processing.JAVA
} //End setup
//
void draw ()
{
   fill(pink);
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  fontSize = 50; //Largest size given window
  textFont(titleFont, fontSize);
  text( title, titleX, titleY, titleWidth, titleHeight );
  //
  if ( noNowReallyStart==true ) {
    program();
  }
} //End draw
//
void keyPressed ()
{
  //Post-OS Level Start Button
  if ( key==' ' && start==true) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR Shortcut
  if ( key=='Q' || key=='q') exit() ;
  if ( key==CODED && keyCode == ESC ) exit();
  //
} //End KeyPressed
//
void mousePressed()
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar");
  //Hint Bug if continue pressing mouse
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
//
