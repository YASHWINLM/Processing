import ddf.minim.*;       
AudioSample sound; 
AudioSample sound2;

void setup(){
Minim minim = new Minim(this);
sound = minim.loadSample("kZQj-Falcon Punch Sound Effect.mp3");
sound2 = minim.loadSample("Air Horn-SoundBible.com-964603082.mp3");
size(1000,1000);
  fill(255,204,136);
  ellipse(200,200,250,250);
  fill(255,034,017);
  ellipse(200,200,230,230);
  fill(255,221,85);
  ellipse(200,200,210,210);
}

void draw(){
 PImage lego=loadImage("lego.ppm.gif");
image(lego,150,150);
image(lego,170,170);
image(lego,190,210);
image(lego,120,250);
image(lego,150,250);
if(mousePressed && (mouseButton==LEFT)){
image(lego,mouseX,mouseY);
sound.trigger();  
}
if (mousePressed && (mouseButton == RIGHT)){
image(lego,mouseX,mouseY);
sound2.trigger();
}

}
