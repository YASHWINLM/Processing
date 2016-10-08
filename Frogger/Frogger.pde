int X=30;
int Y=380;
int hop=25;
Car c= new Car(2,30,300,40);
Car d= new Car(2,30,230,40);

void setup(){
size(400,400);
}
void draw(){
background(017,000,68);
fill(0,221,68);
ellipse(X,Y,20,20);
if(Y<0||X<0||X>400||Y>400){
X=30;
Y=380;

}
c.display();
c.move();
d.display();
d.move();
}
class Car{
int speed;
int x;
int y;
int size;
  Car(int speed,int x,int y,int size){
this.speed=speed;
this.x=x;
this.y=y;
this.size=size;
}
  void display() 
  {
    fill(0,255,0);
    rect(x , y,size, 50);
  }
  void move(){
x=x+10;
if(x>400){
x=-100;
}
}
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
     Y=Y-hop;
      }
      else if(keyCode == DOWN)
      {
        Y=Y+hop; 
      }
      else if(keyCode == RIGHT)
      {
      X=X+hop;
      }
      else if(keyCode == LEFT)
      {
       X=X-hop;
      }
   }
}