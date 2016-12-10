float birdX=100;
float birdY=100;
float birdwidth=50;
float birdheight=30;
float birdYVELOCITY=0;
float gravity = 0.2;
float pipex=200;
float paddleLength=50;
float paddleY=300;
float pipex2= 200;

float paddleLength2= 50;
int random2 = (int) random(50, 200);
int random = (int) random(200,500);

void setup(){
size(500,500); 
}

void draw(){
background(0, 255, 238);
fill(255, 238, 0) ;
ellipse(birdX, birdY+=birdYVELOCITY+=gravity, birdwidth, birdheight);
//fill(255, 68, 51) ;   
//ellipse(150, 150, 50, 5);
fill(51,170,51);
rect(pipex-=3,500-random,paddleLength,random);
fill(51,170,51);
rect(pipex2-=3,0,paddleLength2,500-random-250);
if(pipex<0){
pipex=500;
//random = (int) random(250, 500);
random=(int)random(200);

}
else if (pipex2<0){
pipex2=500;
random= (int)random(500);
}
if(intersects(birdX,  birdY,  pipex,  paddleY, paddleLength)){
println("got 'em");
text("YOU LOSE!", 250,250);


}
else if(intersectstop(birdX,  birdY,  pipex2, 0,paddleLength2)){
println("got 'em2");
text("YOU LOSE!", 250,250);
}
if(birdY<0||birdY>500){
text("YOU LOSE!2", 250,250);
}
}
void mousePressed(){
birdYVELOCITY=max(birdYVELOCITY-10,-10.5);
  //birdYVELOCITY=birdYVELOCITY-20;

}

boolean intersects(float birdX, float birdY, float pipex, float paddleY, float paddleLength) {
if (birdY > paddleY - 4 && birdX > pipex && birdX < pipex + paddleLength)
return true;
else 
return false;
}
boolean intersectstop(float birdX, float birdY, float pipex, float paddleY, float paddleLength) {
if (birdY < paddleY - 4 && birdX < pipex && birdX > pipex + paddleLength)
return true;
else 
return false;
}





