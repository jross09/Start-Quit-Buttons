//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, orange=#FA6900, blue=#0048FA;
//
void setup() 
{
  size(400,300); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth =  width;
  appHeight = height;
  //
  population();
  
  
} //End setup
//
void draw ()
{
  if ( noNowReallyStart==true ) {
    background(0); //Night Mode not considered yet
    //
    //Hover Over Feature
    println("X-value",quitButtonX, mouseX, quitButtonX+quitButtonWidth);
    println("Y-value", quitButtonY,mouseY, quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
        quitButtonColour = orange; //Remember Night Mode
        //Logical Rectangle Boolean True only when hover over active
    } else {
        quitButtonColour = blue; //Remember Day Mode
        //Logical Rectangle Boolean FALSE all other times
    } //End Quit Button Colour
    //
    fill(quitButtonColour);
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover
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
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
//
