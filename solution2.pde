//// Midterm & Takehome.  CST 112.

String title=  "Tail of the Sea";
String subtitle=  "Catch fish by clicking on boat or crawler.\n  (Or use keys:  'b' for boat, 'c' for crawler, r to reset, q to quit.)";
String news=". . .";
String author=  "John Q. Student";

int width=640, height=480;
float surface=  height/4;
float xWave=0, xNext=40;

Boat lollipop;
Tuna nemo;
Crawler crabby;


//// SETUP:  
void setup() {
  size( width, height );
  lollipop=  new Boat( "Lollipop" );
  nemo=  new Tuna( "Nemo" );
  crabby= new Crawler( "Calvin" );
}
void reset() {
  lollipop.restart();
  nemo.restart();
  crabby.restart();
}

void draw() {
  scene();
  action();
  show();
  messages();
}

//// SCENE:  sky, water, etc.
void scene() { 
  background( 200, 220, 250 );                // Sky
  noStroke();
  fill( 0, 100, 0 );
  rect( 0, height/4, width, height*3/4 );    // Sea
  // Waves.
  fill( 200, 220, 250 );                     // (Use sky fill for ellipses).
  if (frameCount%60 == 0) xNext=  random( 15, 50 );        // Change wavew height every 1/2 second
  for ( xWave=  -xNext; xWave<width+xNext; xWave += xNext) {
    ellipse(xWave, surface, xNext, xNext);
  }
}
//// MOVE:  move objects, collisions, etc.
void action() { 
  lollipop.move();
  nemo.move();  
}
//// SHOW:  Display all objects.
void show() { 
  lollipop.show();
  nemo.show();
  crabby.show();
}
//// MESSAGES ////
void messages() { 
  fill(0);
  textSize(20);
  text( title, width/3, 20 );
  textSize(12);
  text( subtitle, width/5, 40 );
  fill(255,0,255);
  text( news, width/4, 80 );
  fill(255);
  text( author, 10, height-10 );
  // Scores.
  fill(0);
  text( "BOAT:  "+lollipop.caught, width-100, 20);
  text( "TUNA:  "+nemo.counter, width-100, 35);
  text( "CRAB:  "+crabby.caught, width-100, 50);
}


//// EVENT HANDLERS ////
void keyPressed() {
  if (key == 'q') exit();
  if (key == 'r') reset();
  // Click or use key.
  if (key == 'b') { 
    lollipop.fish( nemo );
  }
  if (key == 'c') { 
    crabby.hunt( nemo );
  }
}
void mousePressed() {
  // Click on boat to fish for charlie.
  if (lollipop.near( mouseX, mouseY )) {
    lollipop.fish( nemo );
  }
  // Click on crawler to hunt for charlie.
  if (crabby.near( mouseX, mouseY )) {
    crabby.hunt( nemo );
  }
}


class Boat {
  float x,y, dx, dy=0;
  float w=100, h=40;
  float flap=0;
  int caught=0;
  int counter=0;
  String name=  "???";
  //// CONSTRUCTORS ////
  Boat( String name ) {
    this.name=  name;
    restart();
  }
  void restart() {
    x=100;
    y=surface;
    dx=  random( 1,7 );
    counter++;
    news=  ". . .";
  }
  ////  METHODS  ////
  void move() {
    if (x<0) restart();
    if (x>width) dx=  -dx;
    x += dx;
    y += dy;
  }
  void show() {
    y=  surface + 20 +random( -2, +2 );
    fill( 255, 0, 0 );
    rect( x, y-h, w, h );
    rect( x+w/3, y-w/3, w/3, -h*2/3 );
    if (dx>0)  triangle( x+w,y-h, x+w,y, x+w+w/3,y-h );
    else       triangle( x,y-h, x,y, x-w/3,y-h );
    // Animation:  antenna flaps back and forth.
    if (frameCount%10 ==0) flap=  random(-15, +15 );
    strokeWeight(5);
    stroke(200,150,100);
    line( 20+x+w/3, y-h-20, 20+flap+x+w/3, y-h-60 );    
    strokeWeight(1);
    noStroke();
    // Display name & count
    fill(255);
    text( name+" "+counter, x+10, y-20 );
    fill(0);
    text( caught, x-10+w/2, y-h );                    // Display catch in cabin.
    // Stripes
    stroke(0,0,255);
    float yy=  y-h/2+2;
    for (int j=0; j<counter; j++) {  
      line( x+5, yy, x+w-5, yy );
      yy += 2;
    }
    noStroke();
  }
  // Return true if (x,y) is near (<20)
  boolean near( float xx, float yy ) {
    return ( dist( x+w/2,y-h/2, xx,yy) < 50 );
  }
  // If x coordinate is near, then capture this fish.
  void fish( Tuna t ) {
    news +=   "\n" + lollipop.name + " is fishing!";
    if ( abs( t.x - this.x ) < 50) {
      caught++;
      t.restart();
      news =  this.name + " caught fish " + caught;
    }
  }
}

class Tuna {
  float x,y, dx, dy;
  float w=120, h=40;
  int counter=0;
  String name=  "???";
  //
  //// CONSTRUCTORS ////
  Tuna( String name ) {
    this.name=  name;
    restart();
  }
  void restart() {
    counter++;
    x= 100;
    y=  random( surface+20, height-20 );
    dx=  random( 2,5 );
    dy=  random( -3, +3 );;
  }
  ////  METHODS  ////
  void move() {
    if (x<0) restart();
    if (x>width) dx=  -dx;
    if (y<surface+10 || y>height) dy=  -dy;
    x += dx;
    y += dy;
  }
  void show() {
    fill( 255, 200, 200 );
    ellipse( x, y, w, h );
    triangle( x-w/6, y-18, x+w/5, y-18, x, y-40  );                    // Dorsal fin.
    // fin, mouth, eye  -- at proper end of fish!
    if (dx>0) {
      float xTail=  x+10-w/2;
      triangle( xTail, y, xTail-w/3, y-h/2, xTail-w/3, y+h/2   );    // Tail.
      stroke(255,0,0);
      strokeWeight(4);
      line( x+w/2,y+7, x+w/4,y );      // mouth
      strokeWeight(1);
      noStroke();
      eye( x-10+w/2, y-10 );
    }else{
      float xTail=  x-10+w/2;
      triangle( xTail, y, xTail+w/3, y-h/2, xTail+w/3, y+h/2   );    // Tail.
      strokeWeight(4);
      stroke(255,0,0);
      line( x-w/2,y, x-w/4,y+7 );      // mouth
      strokeWeight(1);
      noStroke();
      eye( x+10-w/2, y-10 );
    }//if//
    // Animation:  flap up & down
    float flipper=20;
    if (frameCount/60 % 3 == 0) flipper=  -20;
    fill( 255,128,0 );
    triangle( x-20,y+10, x+20,y+10, x+flipper,y+40 );
    // Name
    fill(0);
    text( name +"  "+ counter, x-20, y );
  }//show()//
  void eye( float xEye, float yEye ) {
      // Eye.
      fill(255,127,0);
      ellipse( xEye, yEye, 15,15 );    //eye.
      fill(0,0,255);
      if (frameCount % 90 <30)  ellipse( xEye, yEye, 12,2 );
      else ellipse( xEye, yEye, 8,8 );
  }  
}


class Crawler {
  float x,y, dx, dy=0;
  float w=80, h=40;
  float grab=20;
  int caught=0;
  int counter=0;
  String name="??";
  //// CONSTRUCTORS ////
  Crawler( String name ) {
    this.name=  name;
    restart();
  }
  void restart() {
    x= random( 100, width-100 );
    y=  height-30;
    counter++;
  }
  ////  METHODS  ////
  void move() {
    x += dx;
    y += dy;
  }
  void show() {
    fill( 255, 255, 0 );
    ellipse( x,y, w,h );
    fill( 0,255,255 );
    rect( x-w/2,y, -20,5 );
    rect( x+w/2,y, 20,5 );
    // Claws
    fill( 255, 0, 255 );
    stroke( 255, 0, 255 );
    claw( x-w/3, y-h/3, -grab, -grab );
    claw( x+w/3, y-h/3, +grab, -grab );
    // Bottom claws
    rect( x-w/2,y+h/2, 10,-10 );
    rect( x+w/2,y+h/2, -10,-10 );
    // Name & #
    fill(0);
    text( name+" "+counter, x-20, y-5 );
    text( caught, x-10, y+20 );
  }
  void claw( float x, float y, float gx, float gy ) {
    rect( x+gx,y+gy, 15,15 );
    line( x+gx,y+gy, x,y );
  }

  // Return true if (x,y) is near (<20)
  boolean near( float xx, float yy ) {
    return ( dist(x,y, xx,yy) < 20 );
  }
  // If x coordinate is near, then capture this fish.
  void hunt( Tuna t ) {
    news +=  "\n" + this.name + " is hunting . . . ";
    grab=  random( 10, +50 );
    if (abs( t.x -this.x )<50) {
      caught++;
      t.restart();
      this.restart();
      news=  this.name + " grabbed fish " + caught;
    }
  }
}



