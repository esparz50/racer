// CMPS 5J
// Assignment 3
// Due date: Apr. 17, 2016
// Purpose: To make a race. One of the 2 racers is crazy.
// Learning how booleans and if and else statements work
// by manipulating the program's x and y axis, mouse and keypressed,
// and the mouse cursor

// Note:
// Please press the mouse  between more in the middle 
// of the program and near in front of the finishing line
// (the black line).

// Plus, move the mouse cursor to the right once the mouse is pressed

// And to stop the crazy racer, try to move the mouse directly 
// and or near to the crazy racer to stop it since rectMode is in default

// Car 1 (normal racer)
int x = 25; // Intial x value for car 1
int speed = 2; // The spead of car 1 once the car is moved
boolean s = false; // Intial boolean is false. Used for creating movement once spacebar is pressed

// Car 2 (crazy racer)
int xc = 25; // Initial x value for car 2
int yc = 70; // Intial y value for car 2
int speedcx = 5; // The speed of the car 2 once the car is moved in the x-axis
int speedcy = 30; // The speed of the car 2 once the car is moved in the y-axis
boolean c = false; // Intial boolean c is false. Used for creating movement once mouse button is pressed
boolean up = true; // Intial boolean uo is true. Used for creating movement once mouse button is pressed




void setup() { // The set up for my program
  size(500, 500); // Size of the sketch is 500 x 500
  background(125); // Grey background
  frameRate(60); // Framerate for this sketch is at 30
}

void draw() { // The sketch that my program going to draw and how it will do
  background(125); // Grey background


  // Car 1 (normal racer)

  // Body of the 1st car
  fill(255, 0, 0); // Color of the car
  stroke(1); // Color of the frame is black
  rect(x, 50, 50, 20); // Size and location of the car

  // Roof of the car
  fill(255, 0, 0); // Color of the roof
  stroke(1); // Color of the frame is black
  rect(x+10, 30, 30, 20); // Size and location of the roof


  // Window for the first car
  fill(255); // Color of the window is white
  rect(x+15, 30, 20, 20); // Size and location of the window

  // Wheels for the first car

  // Back wheel
  fill(0); // Black wheel
  ellipse(x+12, 70, 20, 20); // Size and location of the wheel

  // Front Wheel
  fill(0); // Black wheel
  ellipse(x+38, 70, 20, 20); // Size and location of the wheel

  // Rims

  // For the back wheel
  fill(210); // Grey rim
  ellipse(x+12, 70, 15, 15); // Size and location of the rim

  // For the front wheel
  fill(210); // Grey rim
  ellipse(x+38, 70, 15, 15); // Size and location of the rim

  if (s) { // If spacebar is pressed
    x= x+ speed; // Then first car moves each time the spacebar is pressed
  }
  // Car 2 (crazy racer)

  // Body for the second car
 
  fill(30, 144, 255); // Dodger blue car
  stroke(1); // Color of the frame is black
  rect(xc, yc+230, 50, 20); // Size and location of the car

  // Roof of the 2nd car

  fill(30, 144, 255); // Color for the second car
  stroke(1); // Color of the frame is black
  rect(xc+10, yc+210, 30, 20); // Size and location of the roof

  // Window of the 2nd car
  fill(0); // Black window
  stroke(1); // Black frame
  rect(xc+15, yc+210, 20, 20); // Size and location of the window

  // Wheels

  // Back wheel
  fill(0); // Black wheel
  ellipse(xc+12, yc+252, 20, 20); // Size and location of the wheel

  // Front wheel
  fill(0); // Black wheel
  ellipse(xc+38, yc+252, 20, 20); // Size and location of the wheel

  // Rims

  // For the back wheel
  fill(0, 0, 255); // Blue rim
  ellipse(xc+12, yc+252, 10, 10); // Size and location of the rim

  // For the front wheel
  fill(0, 0, 255); // Blue rim
  ellipse(xc+38, yc+252, 10, 10); // Size and location of the rim

  if (c) { // If mouse is pressed
    xc = xc + speedcx; // The 2nd car will move to the right

    if (yc < 20) { // If the yc value is less than 20
      up = false; //  The car will move up
    } else if (yc >100) { // If the yc value is greater than 100
      up = true; //
    }  
    if (up) { // If the up boolean true
      yc -= 20; // Then the yc is decrease than 20
    } else { // Also the yc value will increase by 20
      yc+=20; // Then the yc will increae by 20
    }
  }
  if (mouseX< xc + 15 && mouseX > xc - 15) { // If the mouse cursor goes near the crazy racer in the range between 15 in the x - axis, then crazy racer stops
    c = false; // Boolean c (x-axis) becomes false, thus making crazy racer to stop

    up = true; // Boolean up (y-axis) becomes true, thus making crazy racer to stop
  }
  // Starting line

  stroke(255); // White line
  line(80, 0, 80, 500); // Size and location of the starting line
  
  // Finishing line
  stroke(1); // Black line
  line(440,0,440,500); // Size and location of the finishing line

  //Test key
}
void keyPressed() { // Allows the user to press a key
  if ( key == ' ') { //  Setting spacebar as the only key to activate
    if (s) { // If the boolean s is false
      s = false; // The first car will not move
    } else { // Switching boolean s to true

      s = true; // The boolean s is true and allows the first car
    }
  }
}

void mousePressed() { // Allows the user to press the mouse button



  c = true; // Then the crazy racer moves once the mouse is pressed
}
