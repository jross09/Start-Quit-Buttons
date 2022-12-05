void quitButtonHoverOverFeature() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = green; //Remember Knight Mode
    //HINT: Logical Rectanlge Boolean TRUE only when hover over active
  } else {
    quitButtonColour = blue; //Remember Day Mode
    //Hint: Logical Rectanlge Boolean FALSE all other times
  } //End Quit Button Colour
}//End quitButtonHoverOverFeature
