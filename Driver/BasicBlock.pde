class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
  }
  
  void createBlock(){
    stroke(0);
    fill(128, 20, 128);
    //rect(posX, posY, getSquareSize(), getSquareSize());
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  void deleteBlock(){
    fill(120.0, 140.0, 250.0);
    stroke(120, 140, 250);
    rect(posX-getSquareSize()/2, posY-getSquareSize()/2, getSquareSize(), getSquareSize());
  }
  
  String toString(){
    return "1" + " " + posX + " " + posY;
  }
  
  String bClass() {
    return "Basic";
  }
}
