/* Names files
 agents.txt
 block_houses.txt
 external_roads.txt
 green_spaces.txt
 palettes.txt
 parcelles.txt
 site_project.txt
 tracking_road.txt
 world_simulation.txt
 */
// imports 

// import borders_world
ArrayList <Borders_world> importBorders_world(String fileName) {
  ArrayList <Borders_world> bw;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("world_simulation.txt");
  vecsBorders_world = new PVector[txtLines.length];
  bw = new ArrayList <Borders_world>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsBorders_world[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    bw.add(new Borders_world(xx, yy));
  }
  return bw;
}

// import site_project
ArrayList <Site_project> importSite_project(String fileName) {
  ArrayList <Site_project> sp;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("site_project.txt");
  vecsSite_project = new PVector[txtLines.length];
  sp = new ArrayList <Site_project>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsSite_project[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    sp.add(new Site_project(xx, yy));
  }
  return sp;
}
// import agents
ArrayList <Agents> importAgents(String fileName) {
  ArrayList <Agents> ag;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("agents.txt");

  ag = new ArrayList <Agents>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');

    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    ag.add(new Agents(xx, yy, zz));
  }
  return ag;
}

// import block_houses
ArrayList <Block_houses> importBlock_houses(String fileName) {
  ArrayList <Block_houses> bh;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("block_houses.txt");
  vecsBlock_houses = new PVector[txtLines.length];
  bh = new ArrayList <Block_houses>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsBlock_houses[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    bh.add(new Block_houses(xx, yy));
  }
  return bh;
}

// import external_roads
ArrayList <External_roads> importExternal_roads(String fileName) {
  ArrayList <External_roads> er;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("external_roads.txt");
  vecsExternal_roads = new PVector[txtLines.length];
  er = new ArrayList <External_roads>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsExternal_roads[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    er.add(new External_roads(xx, yy));
  }
  return er;
}

// import green_spaces
ArrayList <Green_spaces> importGreen_spaces(String fileName) {
  ArrayList <Green_spaces> er;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("green_spaces.txt");
  vecsGreen_spaces = new PVector[txtLines.length];
  er = new ArrayList <Green_spaces>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsGreen_spaces[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    er.add(new Green_spaces(xx, yy));
  }
  return er;
}

// import parcelles
ArrayList <Parcelles> importParcelles(String fileName) {
  ArrayList <Parcelles> pp;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("parcelles.txt");
  vecsParcelles = new PVector[txtLines.length];
  pp = new ArrayList <Parcelles>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsParcelles[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    pp.add(new Parcelles(xx, yy));
  }
  return pp;
}
// import tracking_road
ArrayList <Tracking_roads> importTracking_roads(String fileName) {
  ArrayList <Tracking_roads> tr;
  // load file and split lines into separate strings
  String[] txtLines = loadStrings("tracking_road.txt");
  vecsTracking_roads = new PVector[txtLines.length];
  tr = new ArrayList <Tracking_roads>();

  // loop
  for (int i = 0; i < txtLines.length; i++) {
    //splits into elements
    String[] elements = split(txtLines[i], ' ');
    String[] values = split(txtLines[i], ',' );
    vecsTracking_roads[i] = new PVector(float(values[0]), float(values[1]));
    //separates coords point
    String[] arrToks = split(elements[0], ',');
    float xx = Float.valueOf(arrToks[0]);
    float yy = Float.valueOf(arrToks[1]);
    float zz = Float.valueOf(arrToks[2]);
    tr.add(new Tracking_roads(xx, yy));
  }
  return tr;
}
class Borders_world {
  float xx, yy;
  Borders_world(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c0);
    strokeWeight(5);
    point(xx+m, yy);
  }
  void drawBorders_world() {
    fill(50, 50, 50);
    stroke(255);
    strokeWeight(2);
    beginShape();
    for (int i=0; i<vecsBorders_world.length; i++) {
      PVector v = vecsBorders_world[i];
      vertex(v.x+m, v.y);
    }
    endShape();
  }
}
class Site_project {
  float xx, yy;
  Site_project(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }

  void drawSite_project() {
    noFill();
    stroke(c1);
    strokeWeight(2);
    beginShape();
    for (int i=0; i<vecsSite_project.length; i++) {
      PVector v = vecsSite_project[i];
      vertex(v.x+m, v.y);
    }
    endShape(CLOSE);
  }
}

class Block_houses {
  float xx, yy;
  Block_houses(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c5);
    strokeWeight(5);
    point(xx+m, yy);
  }
}
class External_roads {
  float xx, yy;
  External_roads(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c6);
    strokeWeight(5);
    point(xx+m, yy);
  }
}
class Green_spaces {
  float xx, yy;
  Green_spaces(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c3);
    strokeWeight(5);
    point(xx+m, yy);
  }
}
class Parcelles {
  float xx, yy;
  Parcelles(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c4);
    strokeWeight(5);
    point(xx+m, yy);
  }
}
class Tracking_roads {
  float xx, yy;
  Tracking_roads(float xx, float yy) {
    this.xx = xx;
    this.yy = yy;
  }
  void display() {
    stroke(c4);
    strokeWeight(5);
    point(xx+m, yy);
  }
}