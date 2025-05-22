class Square {
  int size;
  int jumpPower;
  PVector forces;
  PVector playerLocation, gravity;
  boolean touchedGround;

  public Square(int size, PVector location, int jump){
    touchedGround=true;
    forces = new PVector(0.0,0.0);
    gravity = new PVector(0.0,1.0);
    this.size = size;
    playerLocation = location;
    jumpPower = jump;
  }
  
  public void move(){
    playerLocation.add(forces);
    playerLocation.add(gravity);
  }
  
  public void jump(){
    if (touchedGround){
    playerLocation.add(new PVector(0,jumpPower));
    }
  }
  
  public boolean touchingBlock(){
    
  }
  
  
}
