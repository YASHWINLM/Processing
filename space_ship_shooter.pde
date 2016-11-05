void setup(){
size(500,800);
}

void draw(){
background(0,0,85);
spaceShip star= new spaceShip(x,y);

}
class spaceShip{
int x;
int y;

spaceShip (int x, int y){
this.x=x;
this. y=y;
}



public int getX(){

  return x;
}
public int getY(){
return y;
}
public void setXY(int x, int y){
x=100;
y=100;
}
void display() {
    fill(0,255,0);
    rect(x , y,  50, 50);
}


}