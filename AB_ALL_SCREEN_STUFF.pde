// ALL DISPLAY STUFF BEFOR RUNNING THE PROGRAM
/////////////////////////////////////////////////////////////////////////////
class Spot {
  float x, y;         // X-coordinate, y-coordinate
  float diameter;     // Diameter of the circle
  float speed;        // Distance moved each frame
  int direction = 1;  // Direction of motion (1 is down, -1 is up)

  // Constructor
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    y += (speed * direction); 
    if ((y > (displayHeight - diameter/2)) || (y < diameter/2)) { 
      direction *= -1;
    }
  }

  void display() {

    stroke(random(255), random(255), random(255), 50);
    strokeWeight(20);
    ellipse(x, y, diameter, diameter);
  }
}
//////////////////////////////////////////////////////////////////////////////

// welcome text class to be displayed
class Welcome {
  int x, y, size;
  Welcome() {
    x = width/2; 
    y = height/2; 
    size = st1;
  }
  void display() {
    PFont font;
    font = createFont("Minimal", st1);
    textFont(font);
    textSize(st1);
    text(welcometext, x, y);
    textAlign(CENTER);
    fill(255);
  }
}

// GUI (Graphic User Interface) functions
class Gui {
  String menu;
  PFont font;
  float x, y, w, h;
  int textSize;
  Gui(PApplet p5, float x, float y) {
    this.x = x;
    this.y = y;
    w = p5.width;
    h = p5.height;
    textSize = 12;
    font = createFont("Papyrus Regular", textSize); 
    menu = "MENU \n \n \n R = reset. \n1 to 6 = Show system map \nX = draw path \nL = draw connection \nC = cohFlag \nA = AliFlag \nS = sepFlag \nF = flockingFlag \nE = SpawnEdge \nT = Draw Trails ";
    menu +="\nSPACE BAR = toggle map display";
    menu += "\n\nG = toggle this GUI";
  }
  void draw() {
    fill(255);
    textFont(font);
    textSize(textSize);
    text(menu, x, y);
    textAlign(LEFT);
  }
}