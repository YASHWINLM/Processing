int X=30;
int Y=380;
int hop=25;
Car c= new Car(10,30,300,40);
Car d= new Car(-10,370,230,40);
Car e= new Car(-10,360,220,40);
ArrayList<Car>cars=new ArrayList<Car>();
void setup(){
size(400,400);

for(int i=1; i<40; i++){
cars.add(new Car(2,400,20*i,50));
}
}
void draw(){
background(017,000,68);
fill(0,221,68);
ellipse(X,Y,20,20);
if(Y<0||X<0||X>400||Y>400){
X=30;
Y=380;}
for(Car c: cars){
c.display();
c.move();
if(intersects(c)){
X=30;
Y=380;
}


}
if(Y>0){
text( "WOOO!!", 100, 100); 
  textSize(100);
}



c.display();
c.move();
d.display();
d.move();
e.display();
e.move();
}

boolean intersects(Car c) {
if ((Y > c.getY() && Y < c.getY()+50) && (X > c.getX() && X < c.getX()+c.getSize()))
          return true;
    else 
        return false;
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
 int getX(){
   return x;
}
 int getY(){
   return y;
}
int getSize(){
return size;
}


  void display() 
  {
    fill(0,255,0);
    rect(x , y,size, 50);
  }
  void move(){
x=x+speed;
if(x>400 && speed>0){
x=-100;
}
else if(speed< 0&& x<0){
x=500;

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

