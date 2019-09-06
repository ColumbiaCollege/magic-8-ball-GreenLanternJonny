//Jonathan Layes Magic 8 ball.
String[] words = { "     Yes", "      No", "    I DUNNO !?!?!", "Yes-wait a minute-no!", 
  "  Ha Ha Ha!", "I Has no Idea ?!?!", "    Waffles!" };
PImage img1; //sting: for first image.
PImage imgA; // string: when mouse is being pressed.
PImage img;  // string: when mouse is released. 

PFont font; //string for font

void setup() { // void setup() = once

  size(512, 512); // size of window

  font = createFont("INVADER.TTF", 10); // font being used, font size.

  img1 = loadImage("GirNormal.jpg"); // first image to appear when program loads up.
  imgA = loadImage("GirRed.jpg"); // image when mouse is being pressed.
  img = loadImage("Magic8Gir.jpg"); // image when mouse is released.

  //image position = x,y, Size = x,y 
  image(img1, 0, 0, 512, 512); // Introduction image.
}

void draw() { //void draw()= forever
}


void mousePressed() {
  image(imgA, 0, 0, 512, 512); // whe  mouse pressed ( GirRed.jpg )
}
void mouseReleased() {
  image(img, 0, 0, 512, 512); // when mouse released ( Magic8Gir.jpg )

  fill(#3CFF00); // text color = green

  textFont(font); // the font that will appear in program.

  textSize(40); // size of the text = 40

  text(words[int(random (7))], 150, 236);
  // randomly picking the "words" in the list, postioning text x and y
  // 7 = the number the random can choose in the string.
}
