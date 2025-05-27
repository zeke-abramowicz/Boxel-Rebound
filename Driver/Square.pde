class Square {
  int size;
  int jumpPower;
  PVector playerLocation, velocity, acceleration;
  boolean touchingGround;

  PVector gravity = new PVector (0.0, 0.5);

  public Square(int size, PVector location, int jump){
    touchingGround=true;
    velocity = new PVector(0.0,0.0);
    acceleration = new PVector(0.0,0.0);
    this.size = size;
    playerLocation = location;
    jumpPower = jump;
  }
  
  public void move(){
    applyForce(gravity);
    velocity.add(acceleration);
    playerLocation.add(velocity);
    reset();
    velocity.limit(30);
  }
  
  public void jump(){
    if (touchingGround){
    velocity.add(new PVector(0,-jumpPower));
    touchingGround=false;
    }
  }
  
  public void applyForce(PVector force){
    acceleration.add(force);
  }
   
  public void reset(){
    acceleration = new PVector(0.0,0.0);
  }
  
  
  public boolean blockDown(){
    
    
    return false;
  }
  
  public PVector getLocation(){
    return playerLocation;
  }
  public void setLocation(PVector newP){
    playerLocation = newP;
  }
  public int getSize(){
    return size;
  }
  
  /**
  void SquareHere(Level curLev){
    //cycle through level, check the position data of each block
    //getLevel is in Level
    ArrayList currentLevel = curLev.getLevel();
    for (int i =0; i< currentLevel.size();i++){
      if (playerLocation.y+size==currentLevel.get(i).posY&&playerLocation.x>=currentLevel.get(i).posX&&playerLocation.x<=currentLevel.get(i).posX+size){
      //posY and posX are public in Level
        reset();
        playerLocation = new PVector (playerLocation.x, currentLevel.get(i).posY);
        touchingGround = true;
      }
    }
  }
  **/
}
