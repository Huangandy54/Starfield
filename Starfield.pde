Particle [] stars;
void setup()
{
	size(500, 500);
	background(0);
	// stars = new Particle[100];
	// for (int i = 0; i < stars.length; ++i) {
	// 	stars[i]=new Particle();
	// }

}
NormalParticle one = new NormalParticle();
void draw()
{
	background(0);
	one.move();
	one.show();
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
	NormalParticle(){
		pcolor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		psize=5;
		pSpeed=5;
		pX=250;
		pY=250;
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

