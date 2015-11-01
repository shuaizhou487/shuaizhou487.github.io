float x = 50; //Creates the float variable "x" which we will use to define the x-coordinate of an ellipse
float y = 50; //Creates another float variable "y" for the y-coordinate of the ellipse
float z = 200;
int r = 50;
float s = 10;
float yspeed = .8; //Creates the variable for the ellipse's speed when moving vertically
float xspeed = .9; //Creates the variable for the ellipse's speed when moving horizontally
float zspeed = .6; 
void setup(){ //The block of code under setup runs only once at the start of the program
  size(1024,768); //Defines the size of the screen
  noStroke();
}
 
void draw(){ //The block of code under draw loops continuously while the program is running
  //background(28,28,56); //Sets the background color to black
  background(255,255,255);
  
  //g&b
  fill(110,205,221); //Sets the fill color of any following objects to white
  ellipse(z*3,y*3,r + s*2+x/3,r + s*2+x/3);
  ellipse(x*2,z/3, r , r );
  
  //green
  fill(54,187,147);
  ellipse(x,z,r/3 - s,r/3 - s);
  ellipse(y*2,x,r + s,r + s);
  ellipse(x/3,y/3,r - s,r - s);
  ellipse(z+x,y+x/2, s, s);
 
 //blue
  fill(0,115,255);
  ellipse(z,x,r/2,r/2);
  ellipse(z+x,x+y,r/2,r/2);
 
 //red
  fill(260,2,100);
  ellipse(x,z,r/2 + s,r/2 + s);
  ellipse(y*2,x*2, s+x/2, s+x/2);
  ellipse(z*2,x*2,r/2,r/2);
  ellipse(z-x+5,x-y+5,r/2,r/2);

  
  //yellow
  fill(255,173,0);
  ellipse(x,y,s/2 + r,s/2 + r);
  ellipse(x*2,y/3,s*2,s*2);

//zi 
  fill(125,67,174);
  ellipse(x*2,y*3,r/2,r/2);
  ellipse(y*3+x,x*3+x,r + s,r + s);

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
