int backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
void program() {
  background(pic); //Night Mode not considered yet
  //
  debuggingLogicalRectangle();
  quitButtonHoverOverFeature();
  
  fill(quitButtonColour); 
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover
}//End program
