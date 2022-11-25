void quitButtonHoverOverFeature() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
        quitButtonColour = pink; //Remember Night Mode
        //Logical Rectangle Boolean True only when hover over active
    } else {
        quitButtonColour = teal; //Remember Day Mode
        //Hint:Logical Rectangle Boolean FALSE all other times
    } //End Quit Button Colour
}//End quitButtonHoverOverFeature
