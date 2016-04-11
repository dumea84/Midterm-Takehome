//alexander dumervil  --  project 2

float x= 200;
float dx = 7;
float xlex = 250;
float ylex = 600;
float xbigman = 500;
float ybigman = 410;
float speedx = 1;
float speedy = 1;
float lx=90;
float ly=305;
void setup(){
size(800, 700);
frameRate(2);
}
void draw(){

    
// sun
background(10, 100, 255);
fill(255, 255, 0);
stroke(255, 10, 10);
ellipse(x, 150, 50, 50);
x= x + 5;

  if (x + 25 > width) {
    x= 0;
  }
text("Alexander, Dumervil", 80, 100);
//tree a
fill(157, 149, 115);
stroke(157, 149, 110);
rect(700, 300, 50, 100);
// head tree
fill(53, 215, 89);
stroke(53, 210, 85);
ellipse(720, 278, 100, 70);

//tree b
fill(157, 149, 115);
stroke(157, 149, 110);
rect(500, 300, 50, 100);
// head tree
fill(52, 216, 89);
stroke(52, 216, 89);
ellipse(527, 278, 100, 70);

// house
fill(255, 46, 61);
stroke(10);
rect(300, 340, 100, 65);
fill(255, 255, 255);
rect(320, 350, 10, 10);
fill(255, 255, 255);
rect(370, 350, 10, 10);

// house door
fill(255, 255, 255);
rect(345, 375, 15, 60);

// house head
fill(100, 30, 10);
stroke(200, 150, 0);
triangle(300,340, 350,310, 400,340);

// grass
fill(0, 255, 0);
stroke(0);
rect(0, 400, 800, 300);

  //lex
  fill(0, 0, 0);
  stroke(0, 0, 0);
  ellipse(xlex, ylex, 50, 60);
  // ear
  fill(0, 0, 0);
  ellipse(xlex + 25, ylex - 25, 30, 25);
  stroke(0, 0, 0);
  //ear
  fill(0, 0, 0);
  ellipse(xlex - 27, ylex - 23, 30, 25);
  stroke(0);
  // eye
  fill(255, 255, 0);
  ellipse(xlex + 15, ylex + 5, 10, 15);
  ellipse(xlex - 10, ylex + 5, 10, 15);
  // mouth
  fill(255, 255, 0);
  ellipse(xlex+ 1, ylex + 20, 15, 9);
  
  // big man
//head
fill(0, 0, 0);
ellipse(xbigman, ybigman, 80, 95);
// ear
fill(0, 0, 0);
ellipse(xbigman + 40, ybigman - 35, 50, 40);
stroke(0);
//ear
fill(0, 0, 0);
ellipse(xbigman - 40, ybigman - 35, 50, 40);
stroke(0);
// eye
fill(255, 255, 0);
ellipse(xbigman - 20, ybigman - 20, 10, 15);
ellipse(xbigman + 20, ybigman - 20, 10, 15);
// mouth
fill(255, 255, 0);
ellipse(xbigman, ybigman + 20, 30, 20);
// neck
fill(0);
rect(xbigman - 15, ybigman + 45, 30, 37);
// body
fill(180, 200, 150);
rect(xbigman - 50, ybigman + 70, 100, 90);
// legs
fill(190, 300, 60);
rect(xbigman + 30, ybigman + 160, 20, 40);
fill(190, 300, 60);
rect(xbigman - 50, ybigman + 160, 20, 40);
// arms
fill(100, 200, 100);
rect(xbigman - 70, ybigman + 70, 20, 70);
rect(xbigman + 50, ybigman + 70, 20, 70);
// feet
fill(160, 200, 135);
rect(xbigman + 30, ybigman + 185, 40, 15);
rect(xbigman - 70, ybigman + 185, 40, 15);
xbigman = random(100,700);
ybigman = random(300,700);
if( xbigman > width - 100){
 xbigman = 0;
 
}
if(ybigman > height - 200 || ybigman < 300){
 speedy = -1 * speedy; 
}
 // little man
//head
fill(0, 0, 0);
ellipse(130,435, 70, 65);
// ear
fill(0, 0, 0);
ellipse(105, 403, 35, 25);
stroke(0);
//ear
fill(0, 0, 0);
ellipse(157, 403, 35, 25);
stroke(0);
// eye
fill(255, 255, 0);
ellipse(111, 420, 10, 15);
ellipse(150, 420, 10, 15);
// mouth
fill(255, 255, 0);
ellipse(130, 450, 20, 10);
// neck
fill(0);
rect(118, 455, 20, 27);
// body
fill(180, 200, 150);
rect(80, 480, 90, 80);
// legs
fill(90, 200, 60);
rect(150, 560, 20, 40);
fill(190, 300, 60);
rect(80, 560, 20, 40);
// arms
fill(100, 200, 100);
rect(170, 480, 20, 70);
rect(60, 480, 20, 70);
// feet
fill(160, 200, 135);
rect(150, 595, 40, 15);
rect(60, 595, 40, 15);


//little dog
fill(56, 57, 54);
stroke(56, 57, 54);
rect(500, 630, 70, 30);
stroke(56, 57, 54);
rect(480, 640, 20, 10);
ellipse(470, 645, 20, 30);
rect(570, 640, 30, 10);
rect(555, 660, 10, 30);
rect(510, 660, 10, 30);


//big dog
fill(170, 170, 167);
stroke(170, 170, 167);
rect(280, 630, 80, 40);
stroke(170, 170, 167);
rect(260, 640, 20, 10);
ellipse(245, 645, 40, 30);
rect(360, 645, 25, 10);
rect(290, 670, 10, 20);
rect(345, 670, 10, 20);



