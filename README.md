# Midterm-Takehome

Using the Processing PDE, write an interactive program to meet the specifications given below.  
Submit your code via your Github account as a new file named  __"midterm-yourname.java"__   
  _where **yourname** is (at least three letters of) **your own** last name._

Begin with comment lines that state the purpose of your code and also state the name of the author (which should be YOU), and include lines that display YOUR name on the screen when the code is executed.
Be sure to employ good software techniques to ensure "readability" of your code.  
Most importantly:  be sure that YOU understand every single line of the code that you submit.
(Do not copy and past any code from anyone else's code on GitHub.)

Before submitting your code, make sure it compiles runs on **Processing**.  
    *(Code with syntax errors will not be graded!)*  

----
<IMG SRC=http://www.suffolk.li/ides/mid.png ALIGN=RIGHT WIDTH=200 >
### SPECIFICATIONS: ###
The ``draw()`` method should create each frame containing the by following features:
* Display a "scene" and messages.
* A red boat goes back and forth on the surface of the water.
* a large (Tuna) fish swims within the water.
* A bottom-dwelling "crawler" lurks below.  

Event handlers (such as ```mousePressed()``` and ```keyPressed()```
should provide dynamic action, as follows.
* When the boat is clicked (or the 'b' key is pressed, it "goes fishing" and catches any fish that is directly below it.
* When the crawler is clicked (or the 'c' key is pressed, it "goes hunting" and catches any fish that is directly below it.

#### SCENE ####
A light-blue sky overhead and dark green water below

#### RED BOAT ####
A red boat cruises back and forth, on the surface of the sea.  
- It has a pointy bow in front and a cabin amidship.  
- Upon reaching the right side, it turns around and points to the right.
- Upon returning to the left side, it is replaced by a new boat with a random speed (from 2 to 7).

#### TUNA FISH ####
A large, pink fish begins on the left side, at a random height and with random speed:  
(dx from +2 to +5 and dy from -3 to +3).  
Horizontal speed is reversed (dx=  -dx) when it reaches the left or right side,
and vertical speed is reversed (dy=  -dy) when it reaches the surface or the bottom.

#### CREEPY CRAWLER ####
A yellow bottom-dweller sits at the bottom.
Use each of these methods at least once, to draw this ugly yellow creature.
- rect( ... )
- ellipse( ... )
- triangle( ... )
- line( ... )
- text( ... )
- fill( ... )
- stroke( ... )
- strokeWidth( ... )

#### EVENT HANDLERS ####
- The boat should fish for tuna whenever the mouse is clicked near the boat (or when the 'b' key is pressed):
    - If the x-coordiates of the fish and the boat are near each other (within 20), then the fish is reset (back to the left and the boat's score is increased by one.

- The crawler should hunt for tuna whenever the mouse is clicked near it (or when the 'c' key is pressed):
    - If the x-coordiates of the crawler and the fish are near each other (within 20), then the fish is reset (back to the left and the crawler's score is increased by one.

#### OTHER REQUIREMENTS ####
