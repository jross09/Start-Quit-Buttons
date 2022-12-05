void population() {
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  quitButtonX = centerX - ( appWidth * 1/4 );
  quitButtonY = centerY - ( appHeight * 1/4 );
  quitButtonWidth = appWidth * 1/2; //could be centerX, but that is a point
  quitButtonHeight = appHeight * 1/2; //same comment as centerX, point not line
  pic = loadImage("../Images Used/1_0asx4E0.min-800x600.png");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
}//End population
