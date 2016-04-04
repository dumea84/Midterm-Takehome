// Alexander Dumervil CST 112 Midterm
// mid404a

float xboat = 300;
float yboat = 160;
float speedx = 1;
float dxboat = 1;
float xfish= 200;
float yfish = 300;
float dxfish = 1;
float xmove = 80;
float xcorner = 40;
float speedfish = 3;
float xgreen = 0;
float ygreen = 270;
float spacing= 20;
float len = 20;
float xcrab = 260;
float ycrab = 450;
float speedcrab = 2;

void setup()
{
  size (600, 500);
}

void draw ()
{
  scene();

  showboat();
  moveboat();
  
  showcrab();
  movecrab();
}

void scene()
{
  background(0, 100, 255);
  fill (random(53), random(200), random(20) );
  stroke (0, 255, 0);
  rect(0, 200, 600, 300);

{
  // text
  fill (#1A0505 );
  //textSize(20);
  text ("Fishing On the Ocean", 230, 20);
  //textSize(15);
  text("Alexander Dumervil", 40, 490);
  text ("catch fish by clicking on boat or crawler", 180, 40);
  text("or use keys: 'b' for boat, 'c' for crawler, 'r' for reset, q to quit", 115, 60);       // information for the game
  text("BOAT: 11", 530, 20);
  text("TUNA: 410", 530, 40);
  text("CRAB: 6", 530, 60);
}

{
fill(#FFFF00);
for(float xgreen= 0; xgreen<600; xgreen = xgreen + spacing)
line( xgreen, 500, xgreen, 450);
}

  //fish body 
 
  {
  fill(255, 187, 39);
  stroke(255, 187, 39);
  ellipse(xfish, yfish, 80, 50);
  //fill(#000000);
  text( "tuna", xfish -20, yfish);
  }
  
  //tail
  {
  fill(#FFBB27);
  stroke(255, 187, 39);
  rect(xfish -80, yfish -10, 60, 15);
  }
  
  {
  fill(#FFBB27);
  stroke(255, 187, 39);
  triangle(xfish -20, yfish - 20, xfish, yfish - 20, xfish -10, yfish -35);
  }
  
  // eye
  
  {
  fill(255, 255, 255);
  ellipse(xfish +20, yfish -5, 10, 10);
  }
  
  //mouth
  
  {
  fill(255, 39, 64);
  stroke(255, 39, 64);
  line(xfish +10, yfish +10, xfish +35, yfish +10);
  }
  
  // move fish

  { 
    xfish = xfish + speedfish;
    yfish = yfish + speedfish;

    if ( xfish > width) {
      xfish = 0;
    }
    if ( yfish > height) {
     yfish = height/2;
    }
    if (xfish < 0) {
      xfish = width;
    }
    if (yfish < height/2) {
      yfish = height/2;
    }
  }
}
  
 void showboat()
 {
  //boat  
  {
    fill(#FF2268);
    rect(xboat, yboat, 80, 40);
    triangle(xboat +xmove, yboat, xboat  + xmove, yboat+40, xboat + xmove + xcorner, yboat  );
  }

  {
    fill(#FF2268);
    stroke(255, 187, 39);
    rect(xboat + 20, yboat - 20, 30, 20);
  }

  {
  fill(#FAF3F2);
  text("BOAT",xboat +30, yboat + 25);
  }
}



//// Move the boat.
void moveboat()
{
  xboat = xboat + speedx;
  if (xboat > width )
  {
   speedx = speedx * -1; 
    xmove = 0;
    xcorner = xcorner*-1;
  }

  if (xboat < 0 )
  {
    speedx = speedx * -1; 
    xmove = 80;
    xcorner = xcorner*-1;
  }
}


//// Show the crab at bottom.  body, claws, feet, tail, etc.
void showcrab()
{
  // crab body
  {
  fill(#FFFF00);
  stroke(255, 255, 0);
  ellipse( xcrab, ycrab, 70, 40);
  }
  
  { 
  fill(#1A0403);
  text("ketie 8", xcrab - 20, ycrab); 
  text ("6", xcrab, ycrab + 15);
  }
  
  //tail
  {
  fill(15, 250, 236);                          
  rect(xcrab - 65, ycrab -5, 30, 6);    // left tail      
  rect(xcrab + 35, ycrab -5, 30, 6);   // right tail  
  }
  
  //feet crab
  {
  fill(#E20FFA);
  stroke(#0FFAEC);                
  rect(xcrab -35, ycrab - 23, 10, 10);               
  rect(xcrab -35, ycrab + 13, 10, 10);
  rect(xcrab +27, ycrab - 23, 10, 10);
  rect(xcrab + 27, ycrab + 13, 10, 10);
  }
}

 //// Move the crab.
 void movecrab()
 {
  //move crab
  xcrab=xcrab + speedcrab;
if(xcrab + 20> width) 
speedcrab = speedcrab * - 1;
 if( xcrab -20 < 0)
 speedcrab =speedcrab * - 1;
}
