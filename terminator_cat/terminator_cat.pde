import ddf.minim.*;        
AudioSample sound;
PImage catPic = loadImage("tabby.jpeg");
int acceleration=10;
int x=950;
int y=210;
int speedx=acceleration;
int speedy=acceleration;
void setup(){
 noStroke();
  PImage catPic = loadImage("tabby.jpeg");
  size(1910,1078);
  background(catPic);
}

void draw(){
  fill(255,0,0);
  ellipse(x, y, 60, 50);
  ellipse(x+120, y, 60, 50);


}
void keyPressed() {
     y+=2*acceleration;
x+=2*acceleration;
  x++;
y++;
}

