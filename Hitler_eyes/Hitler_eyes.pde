void setup(){
size (480,360);
PImage face = loadImage("face.jpeg");
image(face, 0, 0);

}

void draw(){
  fill(mouseX,mouseY,127);
  ellipse(300, 90, 20, 20);
  ellipse(260, 90, 20, 20);
  rect(265,120,25,5);
  fill(000,000,000);
  ellipse(300,90,5,5);
  ellipse(260,90,5,5);
}
