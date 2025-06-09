class Square {
  int size;
  int jumpPower;
  PVector playerLocation, velocity, acceleration;
  boolean touchingGround;
  PImage joshy;
  float rotat = 0;

  PVector gravity = new PVector (0.0, 1.0);

  public Square(int size, PVector location, int jump) {
    noStroke();
    joshy = loadImage("Face.png");
    touchingGround=true;
    velocity = new PVector(0.0, 0.0);
    acceleration = new PVector(0.0, 0.0);
    this.size = size;
    playerLocation = location;
    jumpPower = jump;
  }

  public void move() {
    for (float i = playerLocation.x; i < playerLocation.y + size; i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      stroke(120, 140 + (i / 15), 250 - (i / 15));
      rect(playerLocation.x, i, size + 1, 1);
    }
    //noStroke();
    stroke(240, 30, 220);
    rect(playerLocation.x, playerLocation.y, size, size);
    
    applyForce(gravity);
    velocity.add(acceleration);
    playerLocation.add(velocity);
    reset();
    velocity.limit(50);
  
    
    if(!touchingGround){
    // Issue with clouds going under background
    for (float i = playerLocation.y; i < playerLocation.y + size; i++){
      fill(120, 140 + (i / 15), 250 - (i / 15));
      //stroke(120, 140 + (i / 15), 250 - (i / 15));
      rect(playerLocation.x, i, size, 1);
    }
    
    pushMatrix();
    translate(playerLocation.x+size/2, playerLocation.y+size/2);
    rotate(rotat);
    noStroke();
    //issue with a stroke under the square
    rect(-15,-15, 30, 30);
    image(joshy, -15, -15, size, size);
    rotat +=0.05;
    //translate(playerLocation.x+size/2, playerLocation.y+size/2);
    rotate(rotat); 
    fill(255);
    rect(-15,-15, 30, 30);
    image(joshy, -15, -15, size, size);
    popMatrix();
    }
    else{
    fill(255);
    //noStroke();
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
          screen=7;
          velocity.y = 0;
          playerLocation = new PVector (playerLocation.x, actualY - size);
          touchingGround = true;
        }

        if (currBlock.bClass().equals("Finish")) {
          finished = true;
          //delay(500);
          textSize(50);
          fill(255);
          //PVector slow = new PVector(-0.5, 0.0);
          //if (velocity.x != 0) applyForce(slow);
          //playerLocation = new PVector (playerLocation.x, actualY-size);
          //touchingGround = true;
          if (screen != 6){
            if (speed == 0) screen = 2;
          }
        }
        if (currBlock.bClass().equals("Cloud")){
        }
      }
    }
    
    for (int j = 0; j < currentLevel.size(); j++){
      Block sideBlock = currentLevel.get(j);
      float actualY1 = sideBlock.posY-sideBlock.getSquareSize()/2;
      float actualX1 = sideBlock.posX-sideBlock.getSquareSize()/2;
      boolean xTouch = playerLocation.x+size>actualX1&&playerLocation.x<actualX1+sideBlock.getSquareSize();//12 is the forgiveness
      boolean yAlign = playerLocation.y+size>actualY1&&playerLocation.y+size<=actualY1+sideBlock.getSquareSize();
      
      if(xTouch&&yAlign && !(sideBlock.bClass().equals("Cloud"))){//hit side of block
      screen=7;
      }
      if(playerLocation.y>height){//fall off map
      screen = 7;
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Basic")){//hit side of block
      playerLocation.x+=-1;
      }
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Spike")){//hit side of block
      screen =7;
      }
      if(xTouch&&yAlign&&sideBlock.bClass().equals("Finish")){//hit side of block
      screen =3;
      setup();
      }
      if(playerLocation.y>height){//fall off map
      screen = 7;
      }
      
      if(playerLocation.x+size<=0){//hit left side
      screen = 7;
      }
    }
    
    
  }
  }
}
