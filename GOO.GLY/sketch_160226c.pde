void setup(){
size(400,300);
background(000,000,000);
}

void draw(){
  if (mouseX<=110){
 mouseX
  }
  if(mouseX>=110){
  mouseX=110
  }
  fill(255,255,255);
  ellipse(110,125,135,100);
  ellipse(280,125,135,100);
  fill(000,000,000);
  ellipse(mouseX,mouseY,30,30);
  ellipse(mouseX+200,130,30,30);
}
