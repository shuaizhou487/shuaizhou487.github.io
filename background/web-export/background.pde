float x = 50; //Creates the float variable "x" which we will use to define the x-coordinate of an ellipse
float y = 50; //Creates another float variable "y" for the y-coordinate of the ellipse
float z = 200;
int r = 50;
float s = 10;
float yspeed = .8; //Creates the variable for the ellipse's speed when moving vertically
float xspeed = .9; //Creates the variable for the ellipse's speed when moving horizontally
float zspeed = .6; 
void setup(){ //The block of code under setup runs only once at the start of the program
  size(2000,2000); //Defines the size of the screen
  noStroke();
}
 
void draw(){ //The block of code under draw loops continuously while the program is running
  background(92,193,175); //Sets the background color to black
  
  fill(82,68,141,127); //Sets the fill color of any following objects to white
  ellipse(x,y,r + s/2,r + s/2); //Creates a circle with radius "r" and a center at the point (x,y)
  ellipse(z*3,y*3,r + s*2+x,r + s*2+x);
  ellipse(y*2,x*2,r + s*2+x,r + s*2+x);
  
  fill(70,143,194,127);
  ellipse(y,x,r + s,r + s);
  ellipse(y*3,x*3,r + s,r + s);
  ellipse(y*3+x,x*3+x,r + s,r + s);
 
  fill(49,85,126,127);
  ellipse(z,x,r*2,r*2);
  ellipse(z*x,z*y,r*2,r*2);
  ellipse(z+x,x+y,r*2,r*2);
  ellipse(z*x,z*y,r*2,r*2);
 
  fill(114,68,141,127);
  ellipse(x,z,r/2 + s,r/2 + s);
  ellipse(x*s,z*s,r/2 + s,r/2 + s);
  
  fill(23,48,76,127);
  ellipse(x+2,y+z,r*3,r*3);
  ellipse(y-z,y-x,r*3,r*3);
  ellipse(z/x,y+x,r*3,r*3);

  fill(114,68,141,127);
  ellipse(x+2,y+z,r*3,r*3);
  ellipse(y-z,y-x,r*3,r*3);
  ellipse(z+x,y+x,r/3+y,r/3+y);

  x = x + xspeed;
  if(x+r>width/2 || x-r<0){ //If the sides of the ellipse reaches either side of the screen...
    xspeed = xspeed * -1; //..the side-to-side direction of the ellipse's movement reverses
  }
   
  y = y + yspeed; //Tells the circle to move up and down at a speed of "yspeed" pixels per frame
  if(y+r>height/2 || y-r<0){ //If the top or bottom of the ellipse reach the top or bottom of the screen..
    yspeed = yspeed * -1; //...the up or down direction of movement reverses
  }
  
  z = z + zspeed; //Tells the circle to move up and down at a speed of "yspeed" pixels per frame
  if(z+r>height/2 || z-r<0){ //If the top or bottom of the ellipse reach the top or bottom of the screen..
    zspeed = zspeed * -1; //...the up or down direction of movement reverses
  }
}

