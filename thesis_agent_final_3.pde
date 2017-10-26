/*
Import_Runing_Agents
 Based on : Alessio Erioli
 Alessio Erioli <alessio.erioli@gmail.com>
 
 */

import peasy.*;
color palette;


void setup() {

  size(displayWidth, displayHeight, P3D); // display screen full resolution maybe
  smooth(10);
  noStroke();


  // initiate all class elements and objects

  /*GUI FONCTION*/
  gui = new Gui(this, 10, 80);

  /*WELCOME TEXT*/
  welcome = new Welcome();

  /*TXT IMPORTED FILES*/
  borders_world = importBorders_world("world_simulation.txt"); // from file
  agents = importAgents("agents.txt"); // from file
  site_project = importSite_project("site_project.txt"); // from file
  block_houses = importBlock_houses("block_houses.txt"); // from file
  external_roads = importExternal_roads("external_road.txt"); // from file
  green_spaces = importGreen_spaces("green_spaces.txt"); // from file
  parcelles = importParcelles("parcelles.txt"); // from file
  tracking_roads = importTracking_roads("tracking_road.txt"); // from file

  /*WELCOME SPOT EFFECTS*/
  spots = new Spot[numSpots]; // Create array
  for (int i = 0; i < spots.length; i++) {
    float x = i*dia*2 ;
    float rate = random(20, 50);
    // Create each object
    spots[i] = new Spot(x, 50, dia, rate);
  }

  /*FIX IMAGES AND LOGO ....*/
  img0 = loadImage("enpc.jpg"); // school logo
  img1 = loadImage("design_by_data.png"); // design by data logo
}


void draw() {
  background(cb);// for dark background

  scale(zoom);
  rotate(angle);
  translate (xo, yo);
  // show fix image on screen == logos
  image(img0, 0, height-img0.height*1.5);
  image(img1, width-img1.width, height-img1.height*2.5);

  // display welcome text
  int curentTime = millis();
  int timeLapse = tl;// display welcome text for 10s
  if (curentTime<timeLapse) {
    //////////////////////////////////////////////////////////////////////////
    for (int i=0; i < spots.length; i++) {
      spots[i].move(); // Move each object
      spots[i].display(); // Display each object
    }
    //////////////////////////////////////////////////////////////////////////}

    welcome.display();
  } else {// run the program code
    if (drawGui) {// draw ||display gui tab
      gui.draw();
    }
    for (Borders_world bw : borders_world) {
      bw.drawBorders_world();
    }
    for (Block_houses bh : block_houses) {
      bh.display();
    }
    for (Site_project sp : site_project) {
      sp.drawSite_project();
    }
    for (Green_spaces gs : green_spaces) {
      gs.display();
    }
    for (Parcelles pp : parcelles) {
      pp.display();
    }

    for (Agents ag : agents) {
      PVector mouse = new PVector(mouseX, mouseY);
      // Draw an ellipse at the mouse position
  fill(200);
  stroke(0);
  strokeWeight(2);
  ellipse(mouseX, mouseY, 48, 48);

  // Call the appropriate steering behaviors for our agents
  ag.seek(mouse);
  ag.update();
  ag.display();
    }
    for (External_roads er : external_roads) {
      er.display();
    }
    for (Tracking_roads tr : tracking_roads) {
      tr.display();
    }
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      zoom += .3;
    } else if (keyCode == DOWN) {
      zoom -= .3;
    } else if (keyCode == RIGHT) {
      angle += .3;
    } else if (keyCode == LEFT) {
      angle -= .3;
    }
  }
  if (key == 32)
  {
    angle = 0;
    zoom = 1;
    xo = width/2;
    yo = height/2;
  }
}

void mouseDragged() {
  xo= xo + (mouseX - pmouseX);
  yo = yo + (mouseY - pmouseY);
}