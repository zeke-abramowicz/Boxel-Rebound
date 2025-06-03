class Square {
  int size;
  int jumpPower;
  PVector playerLocation, velocity, acceleration;
  boolean touchingGround;
  PImage joshy;
  float rotat = 0;

  PVector gravity = new PVector (0.0, 0.5);

  public Square(int size, PVector location, int jump) {
    joshy = loadImage("Face.png");
    touchingGround=true;
    velocity = new PVector(0.0, 0.0);
    acceleration = new PVector(0.0, 0.0);
    this.size = size;
    playerLocation = location;
    jumpPower = jump;
  }

  public void move() {
    
    if(touchingGround){
    fill(120, 140, 250);
    stroke(120, 140, 250);
    rect(playerLocation.x, playerLocation.y, size, size);
    }
    applyForce(gravity);
    velocity.add(acceleration);
    playerLocation.add(velocity);
    reset();
    velocity.limit(50);
    
    
    if(!touchingGround){
    fill(120, 140, 250);
    translate(playerLocation.x+size/2, playerLocation.y+size/2);
    rotate(rotat); 
    rect(-15,-15, 30, 30);
    image(joshy, -15, -15, size, size);
    rotat +=0.1;
    //translate(playerLocation.x+size/2, playerLocation.y+size/2);
    rotate(rotat); 
    fill(255);
    rect(-15,-15, 30, 30);
    image(joshy, -15, -15, size, size);
    }
    else{
    fill(255);
    stroke(255);
    rect(playerLocation.x, playerLocation.y, size, size);
    image(joshy, playerLocation.x, playerLocation.y, size, size);
    }
  }

  public void jump() {
    if (touchingGround) {
      velocity.add(new PVector(0, -jumpPower));
      touchingGround=false;
    }
  }

  public void applyForce(PVector force) {
    acceleration.add(force);
  }

  public void reset() {
    acceleration = new PVector(0.0, 0.0);
  }

  public PVector getLocation() {
    return playerLocation;
  }
  public void setLocation(PVector newP) {
    playerLocation = newP;
  }

  /**void squareHere(Block currBlock){
   //testing version
   float actualY = currBlock.posY-currBlock.getSquareSize()/2;
   float actualX = currBlock.posX-currBlock.getSquareSize()/2;
   boolean notTooHigh = playerLocation.y+size>=actualY;
   boolean notTooLow = playerLocation.y+size<=actualY+25;//change 25?
   boolean inBlockWidth = playerLocation.x+size>actualX&&playerLocation.x<actualX+currBlock.getSquareSize();
   
   if (notTooHigh&&notTooLow&&inBlockWidth){
   if (currBlock.bClass().equals("Basic")){
   System.out.println("Touching basic block");
   velocity.y = 0;
   playerLocation = new PVector (playerLocation.x, actualY - size);
   touchingGround = true;
   }
   
   if (currBlock.bClass().equals("Spike")){
   System.out.println("Touching spike block");
   screen=2;
   velocity.y = 0;
   playerLocation = new PVector (playerLocation.x, actualY - size);
   touchingGround = true;
   }
   
   if (currBlock.bClass().equals("Finish")){
   System.out.println("Touching finish block");
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
   **/

  void squareHere(Level curLev) {
    ArrayList<Block> currentLevel = curLev.getLevel();

    for (int i =0; i< currentLevel.size(); i++) {
      Block currBlock = currentLevel.get(i);
      float actualY = currBlock.posY-currBlock.getSquareSize()/2;
      float actualX = currBlock.posX-currBlock.getSquareSize()/2;
      boolean notTooHigh = playerLocation.y+size>=actualY;
      boolean notTooLow = playerLocation.y+size<=actualY+20;//change 25?
      boolean inBlockWidth = playerLocation.x+size>actualX&&playerLocation.x<actualX+currBlock.getSquareSize();

      if (notTooHigh&&notTooLow&&inBlockWidth) {
        if (currBlock.bClass().equals("Basic")) {
          //System.out.println("Touching basic block");
          velocity.y = 0;
          playerLocation = new PVector (playerLocation.x, actualY - size);
          touchingGround = true;
        }

        if (currBlock.bClass().equals("Spike")) {
          // System.out.println("Touching spike block");
          screen=2;
          velocity.y = 0;
          playerLocation = new PVector (playerLocation.x, actualY - size);
          touchingGround = true;
        }

        if (currBlock.bClass().equals("Finish")) {
          // System.out.println("Touching finish block");
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
    
    for (int j = 0; j < currentLevel.size(); j++){
      Block sideBlock = currentLevel.get(j);
      float actualY1 = sideBlock.posY-sideBlock.getSquareSize()/2;
      float actualX1 = sideBlock.posX-sideBlock.getSquareSize()/2;
      boolean xTouch = playerLocation.x+size>actualX1&&playerLocation.x<actualX1+sideBlock.getSquareSize();//12 is the forgiveness
      boolean yAlign = playerLocation.y+size>actualY1&&playerLocation.y+size<=actualY1+sideBlock.getSquareSize();
      
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Basic")){//hit side of block
      playerLocation.x+=-1;
      }
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Spike")){//hit side of block
      screen =2;
      }
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Finish")){//hit side of block
      screen =3;
      setup();
      }
      if(playerLocation.y>height){//fall off map
      screen = 2;
      }
      
      if(playerLocation.x+size<=0){//hit left side
      screen = 2;
      }
    }
    
    
  }
}
