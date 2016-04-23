PImage mustache;
PImage friends;
int X=-999;
int Y=-999;

void setup() {
  // 1. Get a photo of your friends, and drop it onto this sketch.
  friends = loadImage("friends.jpg");  // 2. Change this to match the name of your photo. 
  size(friends.width, friends.height);
  // 3. Set your friends as the background. 
  size(620,372);
  image(friends,0,0);
  // 4. Find an image of a mustache, and drop it onto this sketch. 
  mustache = loadImage("tash.png"); // 5. Change this to match your file name.
}

void draw() {
 background(friends);
 image(mustache,X-170,Y-130);
  // 8. Only draw the mustache when the mouse is pressed.
  if(mousePressed){
  //image(mustache,170,50);
  X=mouseX;
  Y=mouseY;
  // 6. Add the mustache using: image(mustache, xPosition, yPosition)

  // 7. Change the line above so that the mustache moves with the mouse.
  //image(mustache,mouseX-170,mouseY-130);
  // 9. [optional] You might want to adjust mouseX and mouseY so that your tash is drawn exactly where the mouse is clicked.
  // 10. [optional] Draw a hat on your friends when the right mouse button is clicked: if (mouseButton == RIGHT)
}}


