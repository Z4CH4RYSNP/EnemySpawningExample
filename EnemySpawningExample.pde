/**
  * This program spawns enemies (represented by black circles) along the edge of a set radius, when the mouse is clicked.
  *
  * @author Zachary Sousa, based on Mr. Rowbottom's in-class example
  *
*/




PVector center;    //stores center location

PVector player;    //stores player position

ArrayList<PVector> enemies = new ArrayList<PVector>();       //ArrayList of enemy positions
ArrayList<PVector> eVels   = new ArrayList<PVector>();       //--CURRENTLY UNUSED--
float enemySpeed             = 6;                            //--CURRENTLY UNUSED--


void setup() {
  size(1000, 800);                                 //set window size
  
  player = new PVector(width/2, height/2);         //player begins in the center of the screen
  center = new PVector(width/2, height/2);         //center is set to the middle of the screen
  
}

void spawn() {                                     //function for spawning enemies, void return type since we don't need to return any information... yet
  
  PVector tempPos = PVector.random2D();            //store a temporary PVector with a random direction, like (-0.75006354, -0.6613658, 0.0)
  tempPos = tempPos.setMag(100);                   //normalize the tempPos vector, and set it's magnitude (multiply it by) 100, this now gives us a radius of 100
  tempPos.add(center);                             //add the center position to the tempPos to offset the origin into the middle of the screen
  enemies.add(tempPos);                            //save the PVector to the enemies ArrayList
  
  eVels.add(new PVector());                        //--CURRENTLY UNUSED--
  
}

void mouseClicked() {
  spawn();
}

void draw() {                                      //draw() is called once per frame
  
  background(255, 255, 255);                       //clear previous frame
  
  //spawn();                                       //uncomment to automate (very satisying)
  
  for(PVector p : enemies) {                       //for each PVector in the enemies ArrayList,
    fill(0);                                       //set fill color to black
    ellipse(p.x, p.y, 20, 20);                     //draw an ellipse at the selected PVector's position
  }
  
}
