NormalParticle [] stars;
void setup()
{
  size(500, 500);
  background(0);
  // stars = new Particle[100];
  // for (int i = 0; i < stars.length; ++i) {
  //  stars[i]=new Particle();
  // }
stars = new NormalParticle[100];
for (int i = 0; i < stars.length; ++i) {
   stars[i]=new NormalParticle(250,250);
  }
}
void mouseClicked(){
  stars = new NormalParticle[100];
  for (int i = 0; i < stars.length; ++i) {
   stars[i]=new NormalParticle(mouseX,mouseY);
  }

}
void draw()
{
  background(0);
  for (int i = 0; i < stars.length; ++i) {
   stars[i].show();
   stars[i].move();
  }
}
interface Particle
{
  public void move();
  public void show();
}

class NormalParticle
{
  double pX,pY,pSpeed,pAngle;
  int pcolor,psize;
  NormalParticle(int x,int y){
    pcolor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    psize=5;
    pSpeed=5;
    pX=x;
    pY=y;
    pAngle = Math.PI*2*Math.random();
  }
  void move(){
    pX = pX + Math.cos(pAngle)*pSpeed; 
    pY = pY + Math.sin(pAngle)*pSpeed;
  }
  void show(){
    fill(pcolor);
    ellipse((float)pX, (float)pY, (float)psize, (float)psize);
  }
}

class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
