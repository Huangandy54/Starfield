Particle [] stars;
Ring [] storm;
void setup()
{
  size(500, 500);

  //frameRate(100);
stars = new Particle[500];
for (int i = 2; i < stars.length; ++i) {
   stars[i]=new NormalParticle();
   stars[0]=new OddballParticle();
   stars[1]=new JumboParticle();
  }
  storm = new Ring[500];
  for(int a = 0; a < storm.length; a++) {
    storm[a] = new Ring(); 
  }
}

void draw()
{
  noStroke();
  fill(0,0,0,20);
  rect(0,0,500,500);

  for (int i = 0; i < stars.length; ++i) {
   stars[i].show();
   stars[i].move();
   stars[i].ret();
  }
  for(int a = 0;a  <storm.length; a++) {
    storm[a].move();
    storm[a].show();
    storm[a].ret();
  }
}
interface Particle
{
  public void move();
  public void show();
  public void ret();
}

class NormalParticle implements Particle
{
  double pX,pY,pSpeed,pAngle;
  int pcolor,psize;
  NormalParticle(){
    pcolor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255),50);
    psize=10;
    pSpeed=10;
    pX=250;
    pY=250;
    pAngle = Math.PI*2*Math.random();
  }
  public void move(){
    pX = pX + Math.cos(pAngle)*pSpeed; 
    pY = pY + Math.sin(pAngle)*pSpeed;
  }
  public void show(){
    fill(pcolor);
    ellipse((float)pX, (float)pY, (float)psize, (float)psize);
  }
  public void ret(){
    if(pX<0||pX>500||pY<0||pY>500){
      pX=250;
      pY=250;
    }
  }
}

class OddballParticle implements Particle//uses an interface
{
  int bX,bY,r,g,b;
  OddballParticle(){
    bX=250;
    bY=250;
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);

  }

  public void move() {
    int direction = (int)(Math.random()*4);

      if(direction == 0){
        bX = bX + 15; //right
    }
    else if(direction == 1)
    {
      bX = bX - 15; //left
    }
    else if(direction == 2)
    {
      bY = bY + 15; //down
    }
    else // direction must be 3
    {
      bY = bY - 15; //up
    }
  }
  public void show() {
    fill(r, g, b);
    ellipse(bX, bY, 20, 20);
  }
  public void ret() {
    if(bX<0||bX>500||bY<0||bY>500){
      bX=250;
      bY=250;
      r=(int)(Math.random()*255);
      g=(int)(Math.random()*255);
      b=(int)(Math.random()*255);
    }
  }
}
class JumboParticle implements Particle//uses inheritance
{
  int oX,oY,r,g,b,s,ds;
  JumboParticle(){
    s=1;
    ds=4;
    oX=250;
    oY=250;
    r=(int)(Math.random()*255);
    g=(int)(Math.random()*255);
    b=(int)(Math.random()*255);

  }

  public void move() {
    s=s+ds;
  }
  public void show() {
    fill(r, g, b,20);
    ellipse(oX, oY, s, s);   
  }
  public void ret() {
    if(s>=500){
      ds=-4;
      r=(int)(Math.random()*255);
      g=(int)(Math.random()*255);
      b=(int)(Math.random()*255);
    }
    if(s<=0){
      ds=4;
      r=(int)(Math.random()*255);
      g=(int)(Math.random()*255);
      b=(int)(Math.random()*255);
    }
    }
  }
  
class Ring
{
  //class member variable declarations
  double pX,pY,pSpeed,pAngle;
  int pcolor,psize;
  Ring(){
    pcolor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    psize=5;
    pSpeed=(Math.random()*10)+5;;
    pX=250;
    pY=250;
    pAngle = Math.PI*2*Math.random();
  }
  public void move(){
    pX = pX + Math.cos(pAngle)*pSpeed; 
    pY = pY + Math.sin(pAngle)*pSpeed;
    pAngle = pAngle + 0.027;
  }
  public void show(){
    fill(pcolor);
    ellipse((float)pX, (float)pY, (float)psize, (float)psize);
  }
  public void ret(){
    
  }
}
