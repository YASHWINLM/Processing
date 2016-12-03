float birdX=100;
float birdY=100;
float birdwidth=50;
float birdheight=30;
float birdYVELOCITY=0;
float gravity = 0.5;
float pipex=200;
float paddleLength=50;
float paddleY=200;
int random = (int) random(50, 400);

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
rect(pipex-=3,paddleY,paddleLength,random);
if(pipex<0){
pipex=500;
random = (int) random(50, 400);

}
if(intersects(birdX,  birdY,  pipex,  paddleY, paddleLength)){
println("got 'em");
text("YOU LOSE!", 250,250);


}
}
void mousePressed(){
birdYVELOCITY=birdYVELOCITY-20;

}

boolean intersects(float birdX, float birdY, float pipex, float paddleY, float paddleLength) {
if (birdY > paddleY - 4 && birdX > pipex && birdX < pipex + paddleLength)
return true;
else 
return false;
}




