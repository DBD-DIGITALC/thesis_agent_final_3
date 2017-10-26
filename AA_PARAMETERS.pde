color cw = color(255, 255, 255); //white
color cb = color(0, 0, 0); // black
color c0 = color(0, 85, 255); // world simulation
color c1 = color(255, 0, 0); // site_project
color c2 = color(107, 107, 107); // tracking_road
color c3 = color(8, 255, 53); // green spaces
color c4 = color(230, 39, 176); // parcelles
color c5 = color(163, 117, 8); // block_houses
color c6 = color(150, 181, 134); // external_road
color c7 = color(34, 15, 242); // agents
/*********************************************************/
// declare all class & objects
Welcome welcome;
Gui gui;
// declare fix images
PImage img0, img1;

// declare all variables

int tl = 100; // timeLapse
int st1 = 40;
int m = 200; // marge
// declare strings
String welcometext = "Welcome \n MULTI-AGENT SYSTEMS AND SELF-ORGANIZATION \n in urban growth simulation. \n The case of old Ouagadougou. \n Emergent urbanism \n Presented by Koumagoto Karbaye Paschy \n  Tutor : ALESSIO Erioli";


// setting all boolean
boolean drawGui = true;

ArrayList<Site_project> site_project;
PVector[] vecsSite_project;

ArrayList<Borders_world> borders_world;
PVector[] vecsBorders_world;

ArrayList<Agents> agents;

ArrayList<Block_houses> block_houses;
PVector[] vecsBlock_houses;

ArrayList<External_roads> external_roads;
PVector[] vecsExternal_roads;

ArrayList<Green_spaces> green_spaces;
PVector[] vecsGreen_spaces;

ArrayList<Tracking_roads> tracking_roads;
PVector[] vecsTracking_roads;

ArrayList<Parcelles> parcelles;
PVector[] vecsParcelles;

/*SMALL FANTAISY ON SCREEN WELCOME PART*/
Spot[] spots; // Declare array
int numSpots = 1000  ; // Number of objects
int dia = displayWidth/numSpots+2; // Calculate diameter


/*ZOOM VARIABLES*/
int d = 40;
float xo, yo, zoom = 1, angle = 0;

boolean showPath = false;