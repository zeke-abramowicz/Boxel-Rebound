class BasicBlock extends Block {
  BasicBlock(float x, float y){
    super(x, y);
  }
  
  void createBlock(){
    fill(128.0, 20.0, 128.0);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
  
  void deleteBlock(){
    fill(120.0, 140.0, 250.0);
    stroke(120, 140, 250);
    rect(posX, posY, getSquareSize(), getSquareSize());
  }
  
  String toString(){
    return "1" + " " + posX + " " + posY;
  }

  
}
