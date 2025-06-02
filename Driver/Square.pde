class Square {
  int size;
  int jumpPower;
  PVector playerLocation, velocity, acceleration; //test
  boolean touchingGround;
  PImage joshy;

  PVector gravity = new PVector (0.0, 0.5);

  public Square(int size, PVector location, int jump){
    joshy = loadImage("Face.png");
    touchingGround=true;
    velocity = new PVector(0.0,0.0);
    acceleration = new PVector(0.0,0.0);
    this.size = size;
    playerLocation = location;
    jumpPower = jump;
  }
  
  public void move(){
    fill(120, 140, 250);
    stroke(120, 140, 250);
    rect(playerLocation.x, playerLocation.y, size, size);
    applyForce(gravity);
    velocity.add(acceleration);
    playerLocation.add(velocity);
    reset();
    velocity.limit(50);
    fill(255);
    stroke(255);
    rect(playerLocation.x, playerLocation.y, size, size);
    image(joshy,playerLocation.x, playerLocation.y, size, size);
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
  
  public PVector getLocation(){
    return playerLocation;
  }
  public void setLocation(PVector newP){
    playerLocation = newP;
  }
  
  void squareHere(Block currBlock){
    //testing version
    float actualY = currBlock.posY-currBlock.getSquareSize()/2;
    float actualX = currBlock.posX-currBlock.getSquareSize()/2;
      boolean notTooHigh = playerLocation.y+size>=actualY;
      boolean notTooLow = playerLocation.y+size<=actualY+25;//change 25?
      boolean inBlockWidth = playerLocation.x+size>actualX&&playerLocation.x<actualX+currBlock.getSquareSize();
      
      if (notTooHigh&&notTooLow&&inBlockWidth){
        if (currBlock.bClass().equals("Basic")){
        velocity.y = 0;
        playerLocation = new PVector (playerLocation.x, actualY - size);
        touchingGround = true;
        }
        
        if (currBlock.bClass().equals("Spike")){
        screen=2;
        velocity.y = 0;
        playerLocation = new PVector (playerLocation.x, actualY - size);
        touchingGround = true;
        }
        
        if (currBlock.bClass().equals("Finish")){
        textSize(50);
        fill(255);
        text("Level Completed!", 100, 100);
        velocity.y=0;
        acceleration.y = 0;
        playerLocation = new PVector (playerLocation.x, actualY-size);
        touchingGround = true;
        }
      }
    
  }
  
  
  /**void squareHere(Level curLev){
    ArrayList<Block> currentLevel = curLev.getLevel();
    
    for (int i =0; i< currentLevel.size();i++){
      Block currBlock = currentLevel.get(i);
      boolean notTooHigh = playerLocation.y+size>=currBlock.posY;
      boolean notTooLow = playerLocation.y+size<=currBlock.posY+25;//change 25?
      boolean inBlockWidth = playerLocation.x+size>currBlock.posX&&playerLocation.x<currBlock.posX+currBlock.getSquareSize();
      
      if (notTooHigh&&notTooLow&&inBlockWidth){
        //check classes l8r
        velocity.y = 0;
        playerLocation = new PVector (playerLocation.x, (currentLevel.get(i)).posY - size);
        touchingGround = true;
      }
    }
    
  }**/
  
}
