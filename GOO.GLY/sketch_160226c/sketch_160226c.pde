void setup(){
  size(1920,1080);
PImage face =loadImage ("image.jpg");
image (face,0,0);
background(face);
}

void draw(){
  if (mouseX<=800){
   mouseX=800;
  }
  if(mouseX>=900){
  mouseX=900;
  }
  if (mouseY<380){ 
  mouseY=380;
  }
  if (mouseY>=450){
  mouseY=450;
  }
  fill(255,255,255);
  rect(10,400,500,200);
  ellipse(1200,400,135,100);
  ellipse(850,400,135,100);
  fill(000,000,000);
  ellipse(mouseX,mouseY,30,30);
  ellipse(mouseX+350,mouseY,30,30);
}
