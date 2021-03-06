class Agents {
  ArrayList<PVector> history = new ArrayList<PVector>();

  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed

  
  
  float xx, yy, zz;
    Agents(float xx, float yy, float zz) {
       acceleration = new PVector(0,0);
    velocity = new PVector(0,-2);
    position = new PVector(xx,yy);
    r = 6;
    maxspeed = 15;
    maxforce = 1;
      
      
    this.xx = xx;
    this.yy = yy;
    this.zz = zz;
  }
 // Method to update position
  void update() {
    // Update velocity
    velocity.add(acceleration);
    // Limit speed
    velocity.limit(maxspeed);
    position.add(velocity);
    // Reset accelerationelertion to 0 each cycle
    acceleration.mult(0);
    
        history.add(position.get());
    if (history.size() > 100) {
      history.remove(0);
    }
  }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  // A method that calculates a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
  void seek(PVector target) {
    PVector desired = PVector.sub(target,position);  // A vector pointing from the position to the target
    
    // Normalize desired and scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);
    // Steering = Desired minus velocity
    PVector steer = PVector.sub(desired,velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    
    applyForce(steer);
  }
    
  void display() {
        beginShape();
    stroke(0);
    strokeWeight(1);
    noFill();
    for(PVector v: history) {
      vertex(v.x+m,v.y);
    }
    endShape();
       
    // Draw a triangle rotated in the direction of velocity
    float theta = velocity.heading2D() + PI/2;
    fill(127);
    stroke(0);
    strokeWeight(1);
    pushMatrix();
    translate(position.x,position.y);
    rotate(theta);
    beginShape();
    point(xx+m,yy);
    popMatrix();
    
    
  }
}