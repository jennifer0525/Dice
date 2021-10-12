int sum = 0;
void setup()
{
  background (207, 207, 209);
  noLoop();
  size (500, 500);                     
}
void draw()
{
  // stroke (255, 255, 255);
  // background (255,255,255);
  strokeWeight(3);
  fill (219, 189, 189);
  for (int y = 10; y <= 400; y+=70) { // outer = rows
    for (int x = 10; x <= 480; x +=70) { // inner = columns
      Die bob = new Die (x, y); 
      bob.roll();
      bob.show();
      sum = sum + bob.dotNumber; 
    }
  }
  noStroke(); // NO STROKE FOR THE RECT COVERING THE PREVIOUS #
  fill(207, 207, 209); // SAME COLOR AS BG TO COVER UP PREVIOUS #
  rect(165, 425, 400, 50); // TO COVER UP PREVIOUS #
  textSize (20);
  fill (0);
  text ("Total sum of dots: " + sum, 170, 450);
  sum = 0;
  
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int startX, startY, dotNumber;
 
  Die(int x, int y) //constructor
  {
    //variable initializations here
    startX = x;
    startY = y;
    dotNumber = 0;
  }
  void roll()
  {
    dotNumber = (int) ((Math.random()*6)+1);
  }
  void show()
  {
    //fill (255,255,255); -> for the bg color of the dice
    stroke (255, 255, 255);
    rect (startX, startY, 60, 60);
    if (dotNumber == 1){
      fill (219, 218, 189);
      ellipse (startX+30, startY+30, 10, 10); 
    } else if (dotNumber == 2){
      fill (197, 219, 189);
      ellipse (startX+45, startY+15, 10, 10); 
      ellipse (startX+15, startY+45, 10, 10); 
    } else if (dotNumber == 3){
      fill (197, 219, 189);
      ellipse (startX+45, startY+15, 10, 10);
      ellipse (startX+15, startY+45, 10, 10);
      ellipse (startX+30, startY+30, 10, 10); 
    } else if (dotNumber == 4){
      fill (202, 189, 219);
      ellipse (startX+45, startY+15, 10, 10);
      ellipse (startX+15, startY+45, 10, 10);
      ellipse (startX+15, startY+15, 10, 10);
      ellipse (startX+45, startY+45, 10, 10);
    } else if (dotNumber == 5){
      fill (189, 219, 218);
      ellipse (startX+45, startY+15, 10, 10); 
      ellipse (startX+15, startY+45, 10, 10); 
      ellipse (startX+15, startY+15, 10, 10); 
      ellipse (startX+45, startY+45, 10, 10); 
      ellipse (startX+30, startY+30, 10, 10); 
    } else if (dotNumber == 6){
      fill (219, 189, 189);
      ellipse (startX+45, startY+15, 10, 10); 
      ellipse (startX+15, startY+45, 10, 10);  
      ellipse (startX+15, startY+15, 10, 10);  
      ellipse (startX+45, startY+45, 10, 10);  
      ellipse (startX+15, startY+30, 10, 10); 
      ellipse (startX+45, startY+30, 10, 10); 
    }
  }
}

